describe "Balance class test" do
  before(:each) do
    @balance = Balance.new
    ADD_TO_BALANCE = 100
    DEDUCT_FROM_BALANCE = -100
  end


  it "Balance to start with zero" do
    expect(@balance.get_balance).to eq 0
  end

  it "Balance to increase balance when called" do
    expect(@balance.update_balance(ADD_TO_BALANCE)).to  eq 100
  end

  skip 'I will come back to these once I have green on previous test' do

  it "Balance to decrease balance when called " do
    expect(@balance.update_balance(DEDUCT_FROM_BALANCE)).to eq -100
  end

end

end
