class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.string :name
      t.string :description
      t.string :sn
      t.string :location
      t.string :barcode

      t.timestamps null: false
    end
  end
end
