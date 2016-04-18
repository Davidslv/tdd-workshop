require "./lib/bank_account"

describe BankAccount do

  it "should allow transfering funds from a payer to a payee" do
    @payer = BankAccount.new
    @payee = BankAccount.new

    @payer.credit(100)

    @payer.transfer(@payee, 50)

    expect(@payer.balance).to eq 50
    expect(@payee.balance).to eq 50
  end
end
