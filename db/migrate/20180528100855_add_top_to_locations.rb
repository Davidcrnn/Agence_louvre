class AddTopToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :top, :boolean, null: false, default: false
  end
end
