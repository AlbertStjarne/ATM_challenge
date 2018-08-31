
# ATM challenge
This is the ATM challenge for week 01 in the Craft Academy programming course.
The challenge is to simulate an ATM machine and the withdrawal of cash from it.

## Running tests
This project holds unit tests for the ATM.
Tests can be run in the terminal either with:
- $ rspec   (for all tests)
- $ rspec spec/atm_spec.rb   (to specifically run the atm_spec tests)

## Running in irb
Below are some of the functionalities in this ATM simulator.

$ irb
> load 'lib/person.rb'
> atm = Atm.new
> customer1 = Person.new(name: "Rhon")
> customer1.cash = 100
> customer1.create_account()
> customer1.deposit(50)
> customer1.withdraw(30)
> customer1.withdraw(amount: 30,pin: 8436, account: customer1.account, atm: atm )
> customer1

## Built with
The project is built with Ruby as programming language.

## Authors
- Rhon Gabriel    (https://github.com/RhonGabriel)
- Albert Stjärne  (https://github.com/AlbertStjarne)

## Acknowledgements
Thanks to Thomas and the Craft Academy coaches for support during the project.


