class Person
  attr_accessor :name, :cash, :account
  
  def initialize(attrs = {})
  @name = set_name(attrs[:name])
  @cash = 0
  @account = nil
  end

# next to be fixed
  def create_account
    @account = Account.new(owner)
  end

  


private

def set_name(name)
  name == nil ? missing_name : name
end

def missing_name
  raise ArgumentError, 'A name is required'
end






end
