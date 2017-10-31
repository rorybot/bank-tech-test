describe BalanceCalculator do
  let(:test_account) do
    dummy_transactions = [test_transaction1, test_transaction2, test_transaction3]

    double('Account', transaction_history: dummy_transactions)
  end

  let(:test_transaction1) do
    double('Transaction', amount: 1000)
  end
  let(:test_transaction2) do
    double('Transaction', amount: 2000)
  end
  let(:test_transaction3) do
    double('Transaction', amount: -500)
  end

  let(:test_calc) { BalanceCalculator.new }

  context 'when interacting with account' do
    it 'can calculate balance' do
      expect(test_calc.calculate_balance(test_account.transaction_history)).to eq 2500
    end
  end
end
