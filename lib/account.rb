class Account
  attr_reader :balance, :deposits_history

  def initialize
    @balance = 0
    @deposits_history = []
  end

  def deposit(amount, date)
    @balance += amount
    store_deposit(amount, date)
  end

  private

  def store_deposit(amount, date)
    record = { amount: amount, date: date }
    @deposits_history << record
  end
end
