describe "Statement class test" do

  let(:balance) { double :balance, get_balance: 0, statement: [], timestamp: "01/01/2018", credit_balance: 100, debit_balance: -100 }

  before(:each) do
    @account = Account.new(balance)
  end

  it "Credit to increase balance" do
    expect(@account.credit(100)).to eq 100
  end

  it "Debit to decrease balance" do
    expect(@account.debit(100)).to eq -100
  end

end
