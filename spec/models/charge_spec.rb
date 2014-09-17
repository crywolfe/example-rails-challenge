require 'spec_helper'
require 'rails_helper'

describe Charge do

  it "should verify that there are 10 line items in the successful charges list" do
    @charges = Charge.all
    @customers = Customer.all
    @successful_array = Charge.successful_charges(@charges)
    expect(@successful_array.length).to eql(10)
  end

end
