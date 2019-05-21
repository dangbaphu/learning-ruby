class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.string :id_order
      t.string :integer
      t.string :id_product
      t.numeric :quantity
      t.string :unit_price
      t.string :numeric

      t.timestamps
    end
  end
end
