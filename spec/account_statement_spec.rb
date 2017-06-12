require 'account_statement'

describe AccountStatement do
  subject(:account_statement) {described_class.new}

  context "New Account Statement" do
    describe"#initialize" do
      it "has empty credit, debit and date lists" do
        expect(account_statement.credit).to eq []
        expect(account_statement.debit).to eq []
        expect(account_statement.date).to eq []
      end
    end

    describe "#credit_transaction" do
      it "stores in the date, credit amount and updated balance in their respective lists" do
        subject.credit_transaction(100, 100)
        expect(subject.credit).to eq [100]
        expect(subject.balance).to eq [100]
        expect(subject.date).to eq ["12/06/2017"]
      end
    end

    describe "#debit_transaction" do
      it "stores in the date, debit amount and updated balance in their respective lists" do
        subject.credit_transaction(100, 100)
        subject.debit_transaction(55, 45)
        expect(subject.debit.last).to eq 55
        expect(subject.balance.last).to eq 45
        expect(subject.date.last).to eq "12/06/2017"
      end
    end
  end

end
