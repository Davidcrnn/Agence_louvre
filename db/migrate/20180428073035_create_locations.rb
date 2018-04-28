class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :titre
      t.integer :prix
      t.text :description
      t.float :surface
      t.integer :nbr-chambre
      t.integer :nbr-piece

      t.timestamps
    end
  end
end
