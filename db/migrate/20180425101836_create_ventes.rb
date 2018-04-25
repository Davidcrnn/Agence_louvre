class CreateVentes < ActiveRecord::Migration[5.1]
  def change
    create_table :ventes do |t|
      t.string :name
      t.string :titre
      t.text :description
      t.integer :price
      t.float :surface

      t.timestamps
    end
  end
end
