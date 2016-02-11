class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :deliveryaddress
      t.integer :deliverytime
      t.string :notes
      t.references :orders, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
