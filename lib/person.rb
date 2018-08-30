require './lib/account.rb'
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
    @account == nil ? missing_account : @account.balance += amount
  end


private

def set_name(name)
  name == nil ? missing_name : name
end

def missing_name
  raise ArgumentError, 'A name is required'
end

 def missing_account
   raise RuntimeError, 'No account present'
 end

end
