class AddPicturesToVentes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :pictures, :json
  end
end
