class AddImagesToVentes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :images, :json
  end
end
