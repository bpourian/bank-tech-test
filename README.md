# Bank tech test
This repo was created to represent a tech test. This application is mimicking a
simple bank transaction of debit, credit and show balance. Each transaction is
also timestamped uniquely.

I approached this task by diagramming and thinking about the number of classes that
I needed. Initially I wanted to separate out the action of debiting and crediting
the account into their own individual classes.

### Requirements
* Interact with a REPL
* Deposits, withdrawal
* Account statement (date, amount, balance) printing
* Data can be kept in memory (no db)

### Acceptance criteria
* Given a client makes a deposit of 1000 on 10-01-2012
* And a deposit of 2000 on 13-01-2012
* And a withdrawal of 500 on 14-01-2012
* When she prints her bank statement
* Then she would see
