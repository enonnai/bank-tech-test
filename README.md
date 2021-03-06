# Bank Tech Test

## Contents
* [About](#About)
* [Challenge Specs](#ChallengeSpecs)
* [Installation](#Installation)
* [RSpec Tests](#RSpec)
* [Usage](#Usage)

## <a name="About">About</a>:

I worked on this tech test during a day. Technologies used: Ruby, RSpec.

## <a name="ChallengeSpecs">Challenge Specs</a>:

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## <a name="Installation">Installation</a>
* To clone the repository:
```shell
$ git clone https://github.com/enonnai/bank-tech-test
$ cd bank-tech-test
$ bundle
```

## <a name="Rspec">RSpec Tests</a>
```shell
$ cd bank-tech-test
$ rspec
```

## <a name="Usage">Usage</a>
* Run the code with **irb/pry** and use the commands belows to create an account, deposit, withdraw and print your account statement:
```
$ require "./lib/account.rb"
$ account = Account.new
$ account.deposit(100)
$ account.withdrawal(55)
$ account.print_account_statement
```
