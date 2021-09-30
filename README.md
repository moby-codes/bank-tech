# Bank tech Test

### Summary:

The first thing I did was a bit of planning using Jam Board. I created a basic structure of an account class and user stories that I wanted to work on. After completing a working model, I decided to refactor and keeping SRP in mind, extract the statement method into a seperate class. A diagram was updated to reflect this. Please see the Jamboard link below for further information.

My thought process for this was as follows:

1. Firstly my main aim was to create basic tests and fulfil them accordingly for the accounts class.
2. Once I realized that it would be better to seperate the statement class to a Printer class, I refactored and created a new class adn then pushed the values in to the second class.
3. I rubocop'ed all my code however there were 2 offences that could not be resolved due to the nature of the code.
4. I wanted each debit or credit to create a new array that would save the date, amount, type of transaction i.e. deposit or withdrawal, and the balance after that transaction. 
5. Once this information was saved in an array of arrays, I could easly loop through the elements and print them in the desired output. 
6. I worked on an edge case of raising an error if the balance is not sufficient to fulfill the request. 
7. I feel I could've tried to make some private methods, and did try to do so however, I could not get it working in the refactor, given more time, I may have been able to complete this.
8. I tested the working of my code throughout the process via IRB consistently and made sure all logic was working accordingly. 
9. I struggled with some of the rspec testing for the statement output etc., I have left the code in there so feedback can be received accordingly. 

Jamboard Link: https://jamboard.google.com/d/1-817LK1WskhnXxJE3SMbpsn0AACzcvzqgrbVthqX5t4/edit?usp=sharing

## To Execute

To get started please run: git clone https://github.com/Battery0/bank.git
In the project directory, please run: bundle install

Once loaded, to start the program, you will need to run it in the terminal and execute the following steps: 

$ require './lib/account.rb'
$ account = Account.new << to create a new account
$ account.credit(100) << to credit the account with 100, this can be in integer or float
$ account.debit(50) << to debit the account of 50, this can be in integer or float
$ account.balance << to check the balance of the account
$ account.summary << to print out the account summary/statement in the format specified in the requirements.

The above code should give you the following output:

 Date || Amount ||  Credit/Debit ||  Balance 
 
 2021-09-30 || 100 || deposit || 100
 
 2021-09-30 || 50 || withdrawal || 50



### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```
