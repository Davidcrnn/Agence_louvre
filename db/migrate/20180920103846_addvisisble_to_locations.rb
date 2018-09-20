class AddVisisbleToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :visisble, :boolean, null: false, default: false
  end
end
