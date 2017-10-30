class Account
  attr_reader :balance, :deposits_history

  def initialize
    @balance = 0
    @deposits_history = []
  end

  def deposit(amount)
    @balance += amount
    store_deposit(amount)
  end

  private

  def store_deposit(amount)
    @deposits_history << amount
  end
end
