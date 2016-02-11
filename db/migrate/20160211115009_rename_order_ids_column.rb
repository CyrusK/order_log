class RenameOrderIdsColumn < ActiveRecord::Migration
  def change
    rename_column(:deliveries, :orders_id, :order_id)
  end
end
