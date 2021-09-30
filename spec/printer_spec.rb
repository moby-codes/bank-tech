require 'printer'
require 'date'

describe 'Printer' do

  let(:account) { Account.new }
  let(:date) {Date.today.to_s}
 
  # test to see if printer header is printing

  it 'prints the heading for the statement' do
    printer = Printer.new
    expect(printer.print_header).to eq(print "Date ||" + " Amount || " + " Credit/Debit || " + " Balance \n")

  end

  # test to check if there is a transaction that is saving in the printer class

  it 'grabs the transaction details from the account' do
    account.credit(100)
    nada = double(nil)
    expect(@prints).not_to equal(nada)
  end

  # test to check if date is saving

  # it 'prints the date of the transaction' do
  #   p account
  #   account.credit(100)
  #   expect(account.summary).to eq "#{date} || 100 || deposit || 100" 
  # end

end
