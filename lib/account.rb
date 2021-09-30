require_relative 'printer'
require 'date'

class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @prints = Printer.new
  end

  def credit(deposit)
    credit_transaction = []
    @balance += deposit
    credit_transaction.push(Date.today.to_s, deposit, "deposit", @balance)
    @prints.history(credit_transaction)
  end

  def debit(withdrawal)
    raise RuntimeError, "You do not have enough funds to complete this transaction!" if @balance < withdrawal
    debit_transaction = []
    @balance -= withdrawal
    debit_transaction.push(Date.today.to_s, withdrawal, "withdrawal", @balance)
    @prints.history(debit_transaction)   
  end

  def summary
    @prints.statement
  end

end
