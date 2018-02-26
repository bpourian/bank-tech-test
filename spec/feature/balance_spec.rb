describe "Balance class test" do
  before(:each) do
    @balance = Balance.new
  end

  it "Balance to start with zero" do
    expect(@balance.get_balance).to eq 0
  end

  it "Balance to increase balance when called" do
    @balance.credit_balance(100)
    expect(@balance.get_balance).to eq 100
  end

  it "Balance to decrease balance when called " do
    @balance.debit_balance(-100)
    expect(@balance.get_balance).to eq -100
  end

  it "Balance should credit balance store and print statement" do
    @balance.credit_balance(100)
    expect(@balance.print_statement).to eq ([{:date=>"26/02/2018", :credit=>100, :debit=>0, :balance=>100}])
  end

  it "Balance should debit balance store and print statement" do
    @balance.debit_balance(-100)
    expect(@balance.print_statement).to eq ([{:date=>"26/02/2018", :credit=>0, :debit=>-100, :balance=>-100}])
  end
#
# skip "Will come back to after timestamp has been added" do
#
#   it "Balance to store date and timestamp and return it" do
#     expect(@balance.print_statement).to eq(print_statement_helper)
#   end
#
# end
end
