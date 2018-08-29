class Account
STANDARD_VALIDITY_YRS = 5

attr_accessor :owner, :balance
attr_reader :pin_code

def initialize(attrs = {})
    @exp_date = '08/19'
    @account_status = :active
    @name = set_owner(attrs[:owner])
    @balance = 0
    @pin_code = rand(1000..9999)
  end

  def exp_date
    Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end

  def account_status
    @account_status = :active
  end

  def deactivate
    @account_status = :deactivated
  end

  private

  def set_owner(obj)
    obj == nil ? missing_owner : @owner = obj
  end

  def missing_owner
    raise "An Account owner is required"
  end

end

