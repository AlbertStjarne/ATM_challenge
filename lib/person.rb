require './lib/account.rb'
require 'pry'

class Person
  attr_accessor :name, :cash, :account
  
  def initialize(attrs = {})
  @name = set_name(attrs[:name])
  @cash = 0
  @account = nil
  @deposit = true
  end

# next to be fixed
  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(amount)
    #binding.pry
   @account.balance += amount
  end


private

def set_name(name)
  name == nil ? missing_name : name
end

def missing_name
  raise ArgumentError, 'A name is required'
end






end
