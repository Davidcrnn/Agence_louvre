class AddPicsToVentes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :pics, :string, array: true, default: []
  end
end
