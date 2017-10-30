describe BalanceCalculator do

  let(:test_account) { double('Account', transaction_history: [{},{},{}])}

  context 'when interacting with account' do

    it 'can calculate balance' do
      expect(test_account.calculate_balance).to eq 2500
    end

  end

end
