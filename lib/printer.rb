require_relative 'account'

class Printer
  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_bank_statement(account)
    print_header
    account.transaction_history.each { |transaction| print_transaction(transaction) }
  end

  def print_transaction(transaction)
    date = format_date(transaction.date)
    credit = format_transaction_amount(transaction.credit)
    debit = format_transaction_amount(transaction.debit)
    balance = format_transaction_amount(transaction.balance)

    puts string = "#{date} || #{credit} || #{debit} || #{balance}"
  end

  private

  def format_transaction_amount(amount)
    format('%.2f', amount.abs) unless amount.nil?
  end

  def format_date(date)
    date.strftime('%d/%m/%Y')
  end
end
