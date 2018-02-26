require_relative 'timestamp'

class Balance
attr_reader :get_balance

  def initialize(date = Timestamp.new)
    @timestamp_class = date
    @get_balance = 0
  end

  def update_balance(amount)
    get_balance = amount
    get_date
  end

  def print_statement

  end

  private

  def get_balance=(amount)
    @get_balance = amount
  end

  def get_date
    @timestamp_class.get_date
  end

  def update_statement(date,)

  end

end
