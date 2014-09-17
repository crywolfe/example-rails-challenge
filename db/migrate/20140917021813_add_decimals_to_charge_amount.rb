class AddDecimalsToChargeAmount < ActiveRecord::Migration
  def change
    change_column :charges, :amount, :decimal, :precision => 8, :scale => 2
  end
end
