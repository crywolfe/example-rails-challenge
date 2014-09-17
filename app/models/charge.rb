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


end
