describe Account do
  let(:empty_account) { Account.new }

  context 'when account is created' do
    it 'has an empty balance' do
      expect(empty_account.balance).to eq 0
    end
  end

  context 'when interacting with an account' do
    it 'can store the amount and date of deposit' do
      2.times { empty_account.deposit(1000, '10-01-2012') }
      expect(empty_account.deposits_history.first[:amount]).to eq 1000
      expect(empty_account.deposits_history.first[:date]).to eq '10-01-2012'
    end
  end
end
