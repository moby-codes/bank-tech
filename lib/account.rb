class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(deposit)
    @balance = @balance + deposit
    puts @balance
  end

end
