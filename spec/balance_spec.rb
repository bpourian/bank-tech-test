describe "Balance class test" do
  before(:each) do
    balance = Balance.new
    add_to_balance = 100
    deduct_from_balance = -100
  end


  it "Balance to start with zero" do
    expect(balance.get_balance).to eq 0
  end
  skip 'I will come back to these once I have green on previous test' do
  it "Balance to increase balance when called" do
    expect(balance.update_balance(add_to_balance)).to  eq 100
  end

  it "Balance to decrease balance when called " do
    expect(balance.update_balance(deduct_from_balance)).to eq -100
  end
end

end
