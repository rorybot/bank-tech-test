describe Account do
  let(:empty_account) { Account.new }

  context 'when account is created' do
    it 'has an empty balance' do
      expect(empty_account.balance).to eq 0
    end
  end

  context 'when interacting with an account' do
    it 'can have a balance deposit' do
      empty_account.deposit 1000
      expect(empty_account.balance).to eq 1000
    end
  end
end
