class AddColumnsToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :titre, :string
    add_column :sales, :surface, :string
    add_column :sales, :price, :string
    add_column :sales, :description, :text
    add_column :sales, :localisation, :string
    add_column :sales, :photo, :string
    add_column :sales, :top, :boolean , default: false, null: false
    add_column :sales, :photos, :string
    add_column :sales, :visible, :boolean, default: false, null: false
  end
end
