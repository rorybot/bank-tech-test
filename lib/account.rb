require_relative 'balance_calc'
require_relative 'transaction'

class Account
  attr_reader :calculator, :transaction_history

  def initialize(calculator = BalanceCalculator.new)
    @calculator = calculator
    @transaction_history = []
  end

  def change_balance(amount, date, balance = get_new_balance(amount))
    new_transaction = Transaction.new(amount, Time.parse(date), balance)
    store_transaction(new_transaction)
  end

  def query_balance(transaction_history)
    calculator.calculate_balance(transaction_history)
  end

  private

  def store_transaction(new_transaction)
    @transaction_history << new_transaction
  end

  def get_new_balance(amount)
    (calculator.calculate_balance(transaction_history) + amount)
  end
end
