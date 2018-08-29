class Account
STANDARD_VALIDITY_YRS = 5

  def initialize
    @exp_date = '08/19'
    @account_status = :active

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


end

