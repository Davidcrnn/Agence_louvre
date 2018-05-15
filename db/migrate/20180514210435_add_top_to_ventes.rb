class AddTopToVentes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :top, :boolean, null: false, default: false
  end
end
