class BalanceCalculator

  def sum_credits(transaction_history)
    credit_sum = 0
    transaction_history.each { |each_transaction| credit_sum += each_transaction[:amount] if each_transaction[:type] == 'deposit' }
    credit_sum
  end

  def sum_debits(transaction_history)
    debit_sum = 0
    transaction_history.each { |each_transaction| debit_sum += each_transaction[:amount] if each_transaction[:type] == 'withdraw' }
    debit_sum
  end

end
