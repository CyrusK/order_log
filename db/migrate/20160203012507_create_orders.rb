class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :name
      t.string :pickup
      t.datetime :pickuptime

      t.timestamps null: false
    end
  end
end
