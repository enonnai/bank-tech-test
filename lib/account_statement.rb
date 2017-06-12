class AccountStatement
  attr_reader :date, :credit, :debit, :balance

  def initialize()
    @date = []
    @credit = []
    @debit = []
    @balance = []
  end

  def credit_transaction(amount, balance)
    @date << Time.now.strftime("%d/%m/%Y")
    @credit << amount
    @balance << balance
    @debit << "      "
  end

  def debit_transaction(amount, balance)
    @date << Time.now.strftime("%d/%m/%Y")
    @credit << "      "
    @balance << balance
    @debit << amount
  end

end
