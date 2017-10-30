describe Printer do
  let(:test_printer) { Printer.new }

  context 'when accessed' do
    it 'can print a properly formatted header' do
      expect{ test_printer.print_header }.to output("date || credit || debit || balance\n").to_stdout

    end
  end

end
