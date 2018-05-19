class RemovePicturesToVentes < ActiveRecord::Migration[5.1]
  def change
    remove_column :ventes, :pictures, :json
  end
end
