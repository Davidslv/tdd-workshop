class BankAccount
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def credit(amount)
    @balance += amount
  end

  def transfer(payee, amount)
    payee.credit(amount)
    self.credit(-amount)
  end
end
