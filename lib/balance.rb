require_relative 'timestamp'

class Balance
attr_reader :statement

  def initialize(date = Timestamp.new)
    @timestamp_class = date
    @balance = 0
    @statement = []
  end

  def get_balance
    @balance
  end

  def credit_balance(credit_amount)
    @balance += credit_amount
    update_statement(get_date, credit_amount, "--", get_balance)
  end

  def debit_balance(debit_amount)
    @balance += debit_amount
    update_statement(get_date, "--", debit_amount, get_balance )
  end

  private

  attr_reader :balance

  def balance=(amount)
    @balance = amount
  end

  def get_date
    @timestamp_class.get_date
  end

  def update_statement(date, credit_amount, debit_amount, balance)
    if @statement == nil
        @statement = [[date, credit_amount, debit_amount, balance]]
      else
        @statement.push([date, credit_amount, debit_amount, balance])
    end
  end
end
