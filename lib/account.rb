require_relative 'balance_calc'
require_relative 'transaction'

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

  # def store_change(amount, date, balance = (calculator.calculate_balance(transaction_history) + amount))
  #   record = { amount: amount, date: date, current_balance: balance }
  #   @transaction_history << record
  # end

  def store_change(amount, date)
    new_transaction = Transaction.new(amount, date, get_current_balance(amount))

    @transaction_history << new_transaction
  end

  def get_current_balance(amount)
    (calculator.calculate_balance(transaction_history) + amount)
  end
end
