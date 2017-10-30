describe BalanceCalculator do

  let(:test_account) { double('Account', transaction_history: [{:type=>"deposit", :amount=>1000, :date=>"10-01-2012"},
 {:type=>"deposit", :amount=>2000, :date=>"13-01-2012"},
 {:type=>"withdraw", :amount=>500, :date=>"14-01-2012"}] ) }
  let(:test_calc) { BalanceCalculator.new }

  context 'when interacting with account' do

    it 'can calculate balance' do
      expect(test_calc.calculate_balance(test_account.transaction_history)).to eq 2500
    end

  end

end
