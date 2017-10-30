require_relative 'account'

class Printer
  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_transaction(account, index, calculator = BalanceCalculator.new)
    transaction = account.transaction_history[index]

    if transaction[:amount] > 0
      credit = format('%.2f', transaction[:amount])
    else
      debit = format('%.2f', transaction[:amount])
    end

    date = transaction[:date].strftime('%d/%m/%Y')
    balance = calculator.calculate_balance(account.transaction_history)
    puts string = "#{date} || #{credit} || #{debit} || #{format('%.2f', balance)}"
  end
end
