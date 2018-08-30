require './lib/account.rb'
require './lib/atm.rb'
require 'pry'

class Person
  attr_accessor :name, :cash, :account
  
  def initialize(attrs = {})
  @name = set_name(attrs[:name])
  @cash = 0
  @account = nil
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(amount)
    @account == nil ? missing_account : deposit_funds(amount)
    
  end

  def withdraw(example1 = {})
    @account == nil ? missing_account : withdraw_funds(example1)
  end

private

def deposit_funds(amount) 
  @cash -= amount
  @account.balance += amount
end

def withdraw_funds(example1)
  example1[:atm] == nil ? missing_atm : atm = example1[:atm]
  account = @account
  amount =example1[:amount]
  pin = example1[:pin]
  response = atm.withdraw(amount, pin, account)
  response[:status] == true ? increase_cash(response) : response
end



def increase_cash(response)
  @cash += response[:amount]
end

def set_name(name)
  name == nil ? missing_name : name
end

def missing_name
  raise ArgumentError, 'A name is required'
end

def missing_account
  raise RuntimeError, 'No account present'
end

def missing_atm
  raise RuntimeError, 'An ATM is required'
end


end
