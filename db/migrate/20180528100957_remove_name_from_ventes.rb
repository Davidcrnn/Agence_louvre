class RemoveNameFromVentes < ActiveRecord::Migration[5.1]
  def change
    remove_column :ventes, :name, :string
  end
end
