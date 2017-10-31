require_relative 'account'

class Printer
  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_transaction(transaction, _calculator = BalanceCalculator.new)
    credit = format_transaction_amount(transaction.amount) if transaction.amount > 0

    debit = format_transaction_amount(transaction.amount) if transaction.amount < 0

    date = transaction.date.strftime('%d/%m/%Y')
    balance = format('%.2f', transaction.balance)

    puts string = "#{date} || #{credit} || #{debit} || #{balance}"
  end

  def print_bank_statement(account)
    print_header
    account.transaction_history.each { |transaction| print_transaction(transaction) }
  end

  private

  def call_balance_from_calculator(calculator, _transaction)
    calculator.calculate_balance(account.transaction_history)
  end

  def format_transaction_amount(amount)
    format('%.2f', amount.abs)
  end
end
