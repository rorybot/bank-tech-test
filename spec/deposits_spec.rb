describe Account do
  let(:empty_account) { Account.new }

  context 'when account is created' do
    it 'has an empty balance' do
      expect(empty_account.balance).to eq 0
    end
  end

  context 'when interacting with an account' do
    it 'can store a record of deposits' do
      2.times {empty_account.deposit 1000}
      expect(empty_account.balance).to eq 2000
      expect(empty_account.deposits_history.first).to eq 1000
    end

    it 'can store the date of deposit' do
      empty_account.deposit 1000, "10-01-2012"
      expect(empty_account.deposits_history.first.amount).to eq 1000
      expect(empty_account.deposits_history.first.amount).to eq "10-01-2012"
    end
  end
end
