class AddVisiblesToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :visible, :boolean, null: false, default: false
  end
end
