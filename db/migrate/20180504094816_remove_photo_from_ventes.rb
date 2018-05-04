class RemovePhotoFromVentes < ActiveRecord::Migration[5.1]
  def change
    remove_column :ventes, :photo, :string
  end
end
