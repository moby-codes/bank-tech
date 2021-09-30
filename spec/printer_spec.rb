require 'printer'

describe 'Printer' do

  let(:account) { Account.new }

  it 'prints the heading for the statement' do
    printer = Printer.new
    expect(printer.print_header).to eq(puts "Date ||" + " Amount || " + " Credit/Debit || " + " Balance ")

  end

end
