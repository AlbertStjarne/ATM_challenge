require './lib/account.rb'
require 'Date'

describe Account do

  let(:person) {instance_double('Person', name: 'Santa') }

  subject { described_class.new(owner: person) }

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

  it 'is expected to have an owner' do
    expect(subject.owner).to eq person
  end

  it 'is expected to raise error if no owner is set' do
    expect { described_class.new }.to raise_error 'An Account owner is required'
  end

  it 'check a valid pin code' do
    pin = subject.pin_code
    pin_length = Math.log10(pin).to_i + 1
    expect(pin_length).to eq 4
  end

end