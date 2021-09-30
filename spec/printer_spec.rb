require 'printer'
require 'date'

describe 'Printer' do

  let(:account) { Account.new }
  let(:date) { Date.today.to_s }
  let(:headers) { "Date || Amount || Credit/Debit || Balance" }
  let(:transaction_details) { "#{date} || 100 || deposit || 100" }
 
  # test to see if printer header is printing

  it 'prints the heading for the statement' do
    printer = Printer.new
    expect(printer.print_header).to output(print "Date ||" + " Amount || " + " Credit/Debit || " + " Balance \n")

  end

  # test to check if it is printing the statement correctly

  it 'prints the statement in the correct format' do
    account.credit(100)
    nada = double(nil)
    expect(account.summary).to output("#{headers}\n#{transaction_details}\n").to_stdout
  end

end
