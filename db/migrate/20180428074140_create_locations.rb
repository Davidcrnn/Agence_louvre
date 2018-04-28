class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :titre
      t.text :description
      t.integer :price
      t.float :surface

      t.timestamps
    end
  end
end
