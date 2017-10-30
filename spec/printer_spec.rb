describe Printer do
  let(:test_printer) { Printer.new }

  let(:test_account) do
    dummy_transaction = [{ amount: 1000, date: Time.new(2012, 01, 10), current_balance: 1000 }, { amount: 2000, date: Time.new(2012, 01, 13), current_balance: 3000 }, { amount: -500, date: Time.new(2012, 01, 14), current_balance: 1000 }]

    double('Account', transaction_history: dummy_transaction)
  end

  let(:test_calc) do
    double('Calculator', calculate_balance: 1000)
  end

  context 'when accessed' do
    it 'can print a properly formatted header' do
      expect { test_printer.print_header }.to output("date || credit || debit || balance\n").to_stdout
    end

    it 'can print a transaction' do
      expect { test_printer.print_transaction(test_account.transaction_history[0], test_calc) }.to output("10/01/2012 || 1000.00 ||  || 1000.00\n").to_stdout
    end
  end
end
