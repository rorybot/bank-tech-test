# Bank tech test
An attempt at the Makers Academy Bank Tech Test, for Tech Test Week

Based on this:
https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md

# How To Operate
- Load up in IRB or Pry
- Require './lib/printer.rb'
- To use, create a new Account with the 'new' command
  - Make Deposits by running #change_balance with the following arguments:
    -  The amount (as an integer: positive for deposit, negative for withdrawl)
    - The date of the transaction (formatted as 'DD-MM-YYY')
- To see your balance, create a new Printer with the 'new' command
  - Call the #print_bank_statement method, passing the Account you'd like to see the balance of as an argument


Original Criteria
---

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
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
