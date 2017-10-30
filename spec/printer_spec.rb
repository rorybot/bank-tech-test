describe Printer do
  let(:test_printer) { Printer.new }

  context 'when accessed' do
    it 'can print a properly formatted header' do
      expect ( test_printer.format_header(["date","credit", "debit", "balance"]) ).to eq "date || credit || debit || balance"
    end
  end

end
