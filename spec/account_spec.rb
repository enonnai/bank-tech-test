require 'account'

describe Account do
  subject(:account) { described_class.new }

  context "New account" do
    describe "#initialize" do
      it "sets the balance to the default one" do
        expect(subject.balance).to eq Account::DEFAULT_BALANCE
      end
    end

    describe "#deposit" do
      it "deposits an amount" do
        expect(subject.deposit(100)).to eq 100
      end
    end

    describe "balance check" do
      it "checks that balance is updated" do
        subject.deposit(100)
        expect(subject.balance).to eq 100
      end
    end

    describe "#withdrawal" do
      it "withdraws an amount" do
        subject.deposit(100)
        expect(subject.withdrawal(55)).to eq 45
      end
    end

    describe "#print_account_statement" do
      it "prints an account's statement" do
        subject.deposit(100)
        subject.withdrawal(55)
        expect(subject.print_account_statement).to eq(nil)
      end
    end
  end
end
