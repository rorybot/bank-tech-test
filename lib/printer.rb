require_relative 'account'

class Printer
  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_transaction(account, index, calculator = BalanceCalculator.new)
    transaction = account.transaction_history[index]

    if transaction[:amount] > 0
      credit = format_transaction_amount(transaction[:amount])
    else
      debit = format_transaction_amount(transaction[:amount])
    end

    date = transaction[:date].strftime('%d/%m/%Y')
    balance = call_balance_from_calculator(calculator, account)

    puts string = "#{date} || #{credit} || #{debit} || #{format('%.2f', balance)}"
  end

  private

  def call_balance_from_calculator(calculator, account)
    calculator.calculate_balance(account.transaction_history)
  end

  def format_transaction_amount(amount)
    format('%.2f', amount)
  end
end
