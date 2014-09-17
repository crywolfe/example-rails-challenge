require 'spec_helper'
require 'rails_helper'

describe Charge do


  it "should verify there are three lists on the screen"


  it "should verify that there are 10 line items in the successful charges list" do
    @charges = Charge.all
    @customers = Customer.all
    @failed_array = Charge.failed_charges(@charges)
    expect(@failed_array.length).to eql(5)
  end


end
