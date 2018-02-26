describe "Timestamp class test" do
  before(:each) do
    @timestamp = Timestamp.new
    allow(@timestamp).to receive(:get_date).and_return ("25/02/2018")
  end


  it "Should get the date and return it" do
    expect(@timestamp.get_date).to eq("25/02/2018")
  end

end
