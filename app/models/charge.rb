# == Schema Information
#
# Table name: charges
#
#  id          :integer          not null, primary key
#  created     :integer
#  paid        :boolean
#  amount      :float
#  currency    :string(255)
#  refunded    :boolean
#  created_at  :datetime
#  updated_at  :datetime
#  customer_id :integer
#

class Charge < ActiveRecord::Base
  belongs_to :customer

  def self.failed_charges(charges)
    @failed_array = []
    charges.each do |charge|
      if charge.paid == false
        @failed_array << charge
      end
    end
    @failed_array
  end

  def self.successful_charges(charges)
    @successful_array = []
    charges.each do |charge|
      if charge.paid == true && charge.refunded == false
        @successful_array << charge
      end
    end
    @successful_array
  end

  def self.disputed_charges(charges)
    @disputed_array = []
    charges.each do |charge|
      if charge.paid == true && charge.refunded == true
        @disputed_array << charge
      end
    end
    @disputed_array
  end

end
