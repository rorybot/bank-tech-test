describe Transaction do
  context 'when initialised' do
    it 'can store amount, date and current balance' do
      expect(Transaction.new(1000, '10-01-2012', 1000).amount).to eq 1000
      expect(Transaction.new(1000, '10-01-2012', 1000).date).to eq '10-01-2012'
      expect(Transaction.new(1000, '10-01-2012', 1000).balance).to equal 1000
    end
  end
end
