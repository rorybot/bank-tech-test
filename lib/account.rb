require_relative 'balance_calc'

class Account
  attr_reader :calculator, :transaction_history

  def initialize(calculator = BalanceCalculator.new)
    @calculator = calculator
    @transaction_history = []
  end

  def change_balance(amount, date)
    store_change(amount, Time.parse(date))
  end

  def query_balance(transaction_history)
    calculator.calculate_balance(transaction_history)
  end

  private

  def store_change(amount, date)
    record = { amount: amount, date: date, current_balance: calculator.calculate_balance(transaction_history) + amount }
    @transaction_history << record
  end
end
