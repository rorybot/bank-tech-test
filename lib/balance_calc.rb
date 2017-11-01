class BalanceCalculator
  def calculate_balance(transaction_history)
    the_balance = sum_transactions(transaction_history)
  end

  private

  def sum_transactions(transaction_history)
    array_of_entire(transaction_history).inject(0) { |sum, x| sum + x }
  end

  def array_of_entire(transaction_history)
    transaction_history.map(&:amount)
  end
end
