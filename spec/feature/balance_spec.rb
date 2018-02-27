describe "Balance class test" do
  before(:each) do
    @balance = Balance.new
    allow(@balance).to receive(:get_date).and_return ("25/02/2018")
  end

  it "Balance to start with zero" do
    expect(@balance.get_balance).to eq 0
  end

  it "Credit Balance to increase balance when called" do
    @balance.credit_balance(100)
    expect(@balance.get_balance).to eq 100
  end

  it "Debit Balance to decrease balance when called " do
    @balance.debit_balance(-100)
    expect(@balance.get_balance).to eq -100
  end

  it "Credit Balance should credit balance store and return hash" do
    @balance.credit_balance(100)
    expect(@balance.statement).to eq ([["25/02/2018", 100, "--", 100]])
  end

  it "Debit Balance should debit balance store and return hash" do
    @balance.debit_balance(-100)
    expect(@balance.statement).to eq ([["25/02/2018", "--", -100, -100]])
  end
end
