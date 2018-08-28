class Account
STANDARD_VALIDITY_YRS = 5

  def initialize
    @exp_date = set_expire_date
  end


  def set_expire_date
    Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end


end

