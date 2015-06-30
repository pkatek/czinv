class CreateExploatations < ActiveRecord::Migration
  def change
    create_table :exploatations do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :barcode
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
