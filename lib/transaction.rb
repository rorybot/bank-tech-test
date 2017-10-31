class Transaction
  attr_reader :amount, :date, :balance

  def initialize(amount, date, balance)
    @amount = amount
    @date = date
    @balance = balance
  end

  def credit
    return @amount if @amount > 0
  end

  def debit
    return @amount if @amount < 0
  end
end
