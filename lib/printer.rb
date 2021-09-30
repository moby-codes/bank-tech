require_relative 'account'

class Printer

  attr_reader :print_statement

  def initialize
    @print_statement = []
  end  

  def history(transaction)
    @print_statement << transaction
  end

  def statement
    print_header
    @print_statement.map { |data|
      print data.join(" || ")
      puts "" 
    }
  end

  def print_header
    puts "Date ||" + " Amount || " + " Credit/Debit || " + " Balance "
  end

end
