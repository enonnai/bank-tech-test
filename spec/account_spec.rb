require 'account'

describe Account do
  subject(:account) {described_class.new}

  context "New account" do
    describe "#initialize" do
      it "sets the balance to the default one" do
        expect(subject.balance).to eq Account::DEFAULT_BALANCE
      end
    end
  end

end
