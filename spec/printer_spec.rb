describe Printer do
  let(:test_printer) { Printer.new }

  context 'when accessed' do
    it 'can print a properly formatted header' do
      expect{ test_printer.print_header }.to output("date || credit || debit || balance\n").to_stdout
    end

    it 'can print a transaction' do
      expect{ test_printer.print_transaction }.to output("10-01-2012 || 1000.00 || || 1000.00 balance\n").to_stdout
    end
  end

end
