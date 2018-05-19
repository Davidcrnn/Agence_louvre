class RemoveVentesIdFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :ventes_id, :integer
  end
end
