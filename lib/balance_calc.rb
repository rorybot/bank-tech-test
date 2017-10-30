class BalanceCalculator
  def calculate_balance(transaction_history)
    return the_balance = sum_transactions(transaction_history)
  end

  private

  def sum_transactions(transaction_history)
    money_array = transaction_history.map{|transaction| transaction[:amount]}
    money_array.inject(0){|sum,x| sum + x}
  end

end
