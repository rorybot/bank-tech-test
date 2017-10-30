require_relative 'balance_calc'

class Account
  attr_reader :calculator, :transaction_history

  def initialize(calculator = BalanceCalculator.new)
    @balance = 0
    @calculator = calculator
    @transaction_history = []
  end

  def change_balance(type, amount, date)
    # transaction(type, amount)
    store_change(type, amount, date)
  end

  def query_balance(transaction_history)
    calculator.calculate_balance(transaction_history)
  end

  private

  def store_change(type, amount, date)
    record = { type: type, amount: amount, date: date }
    @transaction_history << record
  end
  #
  # def transaction(type, amount)
  #   type == 'deposit' ? @balance += amount : @balance -= amount
  # end
end
