class AddHomeToVentes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :home, :boolean
  end
end
