class AccountStatement
  attr_reader :date, :credit, :debit, :balance

  def initialize
    @date = []
    @credit = []
    @debit = []
    @balance = []
  end

  def credit_transaction(amount, balance)
    @date << Time.now.strftime("%d/%m/%Y")
    @credit << '%.02f' % amount
    @balance << '%.02f' % balance
    @debit << "      "
  end

  def debit_transaction(amount, balance)
    @date << Time.now.strftime("%d/%m/%Y")
    @credit << "      "
    @balance << '%.02f' % balance
    @debit << '%.02f' % amount
  end

  def print
    puts"   date    || credit || debit || balance "
    i = 0
    while i < @date.length do
      puts "#{@date[i]}" + " || " + "#{@credit[i]}" + " || " + "#{@debit[i]}" + " || " + "#{@balance[i]}"
      i += 1
    end
  end

end
