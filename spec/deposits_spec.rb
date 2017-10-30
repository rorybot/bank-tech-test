describe Account do
  let(:test_account) { Account.new }

  context 'when account is created' do
    it 'has an empty balance' do
      expect(test_account.balance).to eq 0
    end
  end

  context 'when interacting with an account' do
    it 'can track balance' do
      2.times { test_account.deposit(1000, '10-01-2012') }
      expect(test_account.balance).to eq 2000
    end

    it 'can store the amount and date of deposit' do
      2.times { test_account.deposit(1000, '10-01-2012') }
      expect(test_account.deposits_history.first[:amount]).to eq 1000
      expect(test_account.deposits_history.first[:date]).to eq '10-01-2012'
    end

    it 'can make withdrawls from balance' do
      test_account.deposit(1000, '10-01-2012')
      test_account.deposit(2000, '13-01-2012')
      test_account.withdraw(500, '14-01-2012')
      expect test_account.balance to eq 2500
    end
  end
end
