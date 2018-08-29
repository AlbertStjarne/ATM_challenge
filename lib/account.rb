class Account
STANDARD_VALIDITY_YRS = 5

  def initialize
    @exp_date = '08/19'
  end


  def exp_date
    Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end


end

