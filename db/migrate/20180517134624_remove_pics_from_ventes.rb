class RemovePicsFromVentes < ActiveRecord::Migration[5.1]
  def change
    remove_column :ventes, :pics, :string
  end
end
