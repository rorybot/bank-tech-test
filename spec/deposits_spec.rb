describe Account do
  let(:test_account) { Account.new }

  context 'when interacting with an account' do
    it 'can track balance' do
      2.times { test_account.change_balance(1000, '10-01-2012') }
      expect(test_account.query_balance(test_account.transaction_history)).to eq 2000
    end

    it 'can store the amount and date and current balance of deposit' do
      2.times { test_account.change_balance(1000, '10-01-2012') }
      expect(test_account.transaction_history.first.amount).to eq 1000
      expect(test_account.transaction_history.first.date.to_i).to eq 1_326_153_600
      expect(test_account.transaction_history.first.date.year).to eq 2012
      expect(test_account.transaction_history.first.balance).to eq 1000
    end

    it 'can make withdrawls from balance' do
      test_account.change_balance(1000, '10-01-2012')
      test_account.change_balance(2000, '13-01-2012')
      test_account.change_balance(-500, '14-01-2012')
      expect(test_account.query_balance(test_account.transaction_history)).to eq 2500
    end
  end
end
