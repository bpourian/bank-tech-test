class Balance
attr_reader :get_balance

  def initialize
    @get_balance = 0
  end

  def update_balance(amount)
    get_balance = amount
  end


  private
  def get_balance=(amount)
    @get_balance = amount
  end

end
