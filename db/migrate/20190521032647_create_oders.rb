class CreateOders < ActiveRecord::Migration[5.2]
  def change
    create_table :oders do |t|
      t.datetime :date_order
      t.numeric :total
      t.integer :status, :limit => 1 

      t.timestamps
    end
  end
end
