class RemoveLocationFromPictures < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :location_id, :integer
  end
end
