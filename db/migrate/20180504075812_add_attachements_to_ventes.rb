class AddAttachementsToVentes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :attachements, :json
  end
end
