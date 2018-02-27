require_relative 'balance'
require 'terminal-table'

class Account

  def initialize(balance = Balance.new)
    @balance_class = balance
  end

  def credit(amount)
    @balance_class.credit_balance(amount)
  end

  def debit(amount)
    @balance_class.debit_balance(amount)
  end

  def print_statement
    table = Terminal::Table.new do |t|
      t.headings = ['date', 'credit', 'debit', 'balance']
      t.rows = @balance_class.statement
    end
    puts table
  end

end
