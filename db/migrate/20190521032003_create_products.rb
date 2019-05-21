class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :image
      t.text :description
      t.numeric :price

      t.timestamps
    end
  end
end
