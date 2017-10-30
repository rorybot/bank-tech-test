require_relative 'account'

class Printer
  def print_header
    puts "date || credit || debit || balance"
  end

  def print_transaction(account, index, calculator = BalanceCalculator.new)
    transaction = account.transaction_history[index]
    credit = '%.2f' % transaction[:amount] if transaction[:type] == 'deposit'
    debit = '%.2f' % transaction[:amount] if transaction[:type] == 'withdrawl'
    date = transaction[:date].strftime("%d/%m/%Y")
    balance = calculator.calculate_balance
    puts string = "#{date} || #{credit} || #{debit} || #{'%.2f' % balance}"
  end
end
