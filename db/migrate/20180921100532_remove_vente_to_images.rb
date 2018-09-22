class RemoveVenteToImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :vente_id, :integer
  end
end
