class ChangeColumnDeliveryTime < ActiveRecord::Migration
  def change
    change_column(:deliveries, :deliverytime, :datetime)
  end
end