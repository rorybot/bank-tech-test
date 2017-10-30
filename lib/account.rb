require_relative 'balance_calc'

class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def change_balance(type, amount, date)
    transaction(type, amount)
    store_change(type, amount, date)
  end

  def calculate_balance
    the_balance = 0
    the_balance += sum_credits(transaction_history)
    the_balance -= sum_debits(transaction_history)

    the_balance
  end

  private

  def store_change(type, amount, date)
    record = { type: type, amount: amount, date: date }
    @transaction_history << record
  end

  def transaction(type, amount)
    type == 'deposit' ? @balance += amount : @balance -= amount
  end

end
