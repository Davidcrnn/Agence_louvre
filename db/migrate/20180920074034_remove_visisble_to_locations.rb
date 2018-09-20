class RemoveVisisbleToLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :visisble, :booleant
  end
end
