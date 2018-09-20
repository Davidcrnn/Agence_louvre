class AddVisibleToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :visisble, :boolean, default: true
  end
end
