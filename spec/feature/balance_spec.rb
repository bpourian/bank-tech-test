describe "Balance class test" do
  before(:each) do
    @balance = Balance.new
  end

  it "Balance to start with zero" do
    expect(@balance.get_balance).to eq 0
  end

  it "Balance to increase balance when called" do
    expect(@balance.update_balance(100)).to  eq 100
  end

  it "Balance to decrease balance when called " do
    expect(@balance.update_balance(-100)).to eq -100
  end
end
