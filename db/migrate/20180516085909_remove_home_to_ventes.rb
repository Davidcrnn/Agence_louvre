class RemoveHomeToVentes < ActiveRecord::Migration[5.1]
  def change
    remove_column :ventes, :home, :boolean
  end
end
