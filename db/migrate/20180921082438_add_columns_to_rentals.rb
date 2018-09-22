class AddColumnsToRentals < ActiveRecord::Migration[5.1]
  def change
    add_column :rentals, :titre, :string
    add_column :rentals, :surface, :string
    add_column :rentals, :price, :string
    add_column :rentals, :description, :text
    add_column :rentals, :localisation, :string
    add_column :rentals, :pictures, :string
    add_column :rentals, :top, :boolean , default: false, null: false
    add_column :rentals, :photos, :string
    add_column :rentals, :visible, :boolean, default: false, null: false
  end
end
