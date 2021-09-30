require 'date'

class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @print_statement = []
  end

  def credit(deposit)
    credit_transaction = []
    @balance += deposit
    credit_transaction.push(Date.today.to_s, deposit, "deposit", @balance)
    @print_statement.push(credit_transaction)
  end

  def debit(withdrawal)
    if @balance < withdrawal
      raise RuntimeError,  "You do not have enough funds to complete this transaction!" 
    else
      debit_transaction = []
      @balance -= withdrawal
      debit_transaction.push(Date.today.to_s, withdrawal, "withdrawal", @balance)
      @print_statement.push(debit_transaction) 
    end  
  end

end
