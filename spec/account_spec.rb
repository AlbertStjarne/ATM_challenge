require './lib/account.rb'
require 'Date'

describe Account do

  it 'is expected to have an expiry date on initialize' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.exp_date).to eq expected_date
  end

  it 'is expected to have :active status on initialize' do
    expect(subject.account_status).to eq :active
  end

  it 'deactivate account using Instance method' do
    subject.deactivate
    expect(subject.deactivate).to eq :deactivated 
  end

end