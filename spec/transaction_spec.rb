describe Transaction do
  let(:test_account) do
    dummy_transaction = [{ amount: 1000, date: Time.new(2012, 0o1, 10), current_balance: 1000 }, { amount: 2000, date: Time.new(2012, 0o1, 13), current_balance: 3000 }, { amount: -500, date: Time.new(2012, 0o1, 14), current_balance: 1000 }]

    double('Account', transaction_history: dummy_transaction)
  end

  let(:test_calc) do
    double('Calculator', calculate_balance: 1000)
  end

  context 'when initialised' do
    it 'can store amount, date and current balance' do
      expect(Transaction.new(1000, '10-01-2012', 1000).amount).to eq 1000
      expect(Transaction.new(1000, '10-01-2012', 1000).date).to eq '10-01-2012'
      expect(Transaction.new(1000, '10-01-2012', 1000).balance).to equal 1000
    end
  end
end
