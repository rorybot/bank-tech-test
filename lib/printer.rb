require_relative 'account'

class Printer
  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_transaction(transaction, calculator = BalanceCalculator.new)

    if transaction[:amount] > 0
      credit = format_transaction_amount(transaction[:amount])
    else
      debit = format_transaction_amount(transaction[:amount])
    end

    date = transaction[:date].strftime('%d/%m/%Y')
    balance = transaction[:current_balance]

    puts string = "#{date} || #{credit} || #{debit} || #{format('%.2f', balance)}"
  end

  # def print_bank_statement(account)
  #   account.transaction_history.each{|transaction| print_transaction(account)
  # end

  private

  def call_balance_from_calculator(calculator, transaction)
    calculator.calculate_balance(account.transaction_history)
  end

  def format_transaction_amount(amount)
    format('%.2f', amount)
  end
end
