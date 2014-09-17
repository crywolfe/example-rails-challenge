require 'spec_helper'
require 'rails_helper'

describe Charge do
  before :all do
    Rails.application.load_seed
    @charges = Charge.all
    @customers = Customer.all
    @successful_array = Charge.successful_charges(@charges)
    @disputed_array = Charge.disputed_charges(@charges)
    @failed_array = Charge.failed_charges(@charges)
  end


  it "should verify there are 10 line items in the successful charges list" do
    @charges = Charge.all
    @customers = Customer.all
    @successful_array = Charge.successful_charges(@charges)
    expect(@successful_array.length).to eql(10)
  end

  it "should verify there are 5 line items in the failed charges list" do
    @charges = Charge.all
    @customers = Customer.all
    @failed_array = Charge.failed_charges(@charges)
    expect(@failed_array.length).to eql(5)
  end

  it "should verify there are 5 line items in the failed charges list" do
    @charges = Charge.all
    @customers = Customer.all
    @disputed_array = Charge.disputed_charges(@charges)
    expect(@disputed_array.length).to eql(5)
  end

end
