require_relative 'timestamp'

class Balance
attr_reader :balance, :statement

  def initialize(date = Timestamp.new)
    @timestamp_class = date
    @balance = 0
    @statement = []
  end

  def get_balance
    @balance
  end

  def credit_balance(credit_amount)
    @balance = credit_amount
    get_date
  end

  def debit_balance(debit_amount)
    @balance = debit_amount
    update_statement(date = :get_date, 0, debit_amount, balance = :balance )
  end

  def print_statement

  end

  private

  def balance=(amount)
    @balance = amount
  end

  def get_date
    @timestamp_class.get_date
  end

  def update_statement(date, credit_amount,debit_amount, balance)
    if @statement == nil
      @statement = [
        {
          date: date,
          credit: credit_amount,
          debit: debit_amount,
          balance: balance
          }
        ]
      else
        @statement.push(
          {
            date: date,
            credit: credit_amount,
            debit: debit_amount,
            balance: balance
            }
        )
    end
  end

end
