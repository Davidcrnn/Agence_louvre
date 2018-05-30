class ChangeSurfaceToBeStringInLocations < ActiveRecord::Migration[5.1]
  def change
    change_column :ventes, :surface, :string
  end
end
