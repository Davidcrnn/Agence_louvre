class AddVisibleToVentes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :visible, :boolean, default: true
  end
end
