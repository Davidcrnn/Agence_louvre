class RemoveVisibleFromVentes < ActiveRecord::Migration[5.1]
  def change
    remove_column :ventes, :visible, :boolean
  end
end
