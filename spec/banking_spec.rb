require 'spec_helper'

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

describe BankAccount do

  it 'should allow transfering funds from a payer to a payee' do
    @payer = BankAccount.new
    @payee = BankAccount.new

    @payer.credit(100)

    @payer.transfer(@payee, 50)

    expect(@payer.balance).to eq 50
    expect(@payee.balance).to eq 50
  end
end
