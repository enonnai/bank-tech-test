require './lib/account_statement'

class Account
  DEFAULT_BALANCE = 0
  attr_reader :balance

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @account_statement = AccountStatement.new
  end

  def deposit(amount)
    @balance += amount
    @account_statement.credit_transaction(amount, @balance)
    @balance
  end

  def withdrawal(amount)
    @balance -= amount
    @account_statement.debit_transaction(amount, @balance)
    @balance
  end

end
