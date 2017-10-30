describe BalanceCalculator do
  let(:test_account) do
    dummy_transaction = [{ amount: 1000, date: '10-01-2012' }, { amount: 2000, date: '13-01-2012' }, { amount: -500, date: '14-01-2012' }]
    double('Account', transaction_history: dummy_transaction)
  end
  let(:test_calc) { BalanceCalculator.new }

  context 'when interacting with account' do
    it 'can calculate balance' do
      expect(test_calc.calculate_balance(test_account.transaction_history)).to eq 2500
    end
  end
end
