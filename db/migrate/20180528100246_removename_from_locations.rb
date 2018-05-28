class RemovenameFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :name, :string
  end
end
