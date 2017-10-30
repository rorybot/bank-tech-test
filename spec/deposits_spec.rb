describe Account do
    let(:account) { Account.new }


  context 'when account is created' do
    it 'has an empty balance' do
      expect(account.balance).to eq 0
    end
  end
end
