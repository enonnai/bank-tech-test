require 'account'

describe Account do
  subject(:account) {described_class.new}

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
        expect(subject.deposit(100)).to eq 100
        expect(subject.balance).to eq 100
      end
    end
  end

end
