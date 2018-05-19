class AddVenteIdToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :vente_id, :integer
  end
end
