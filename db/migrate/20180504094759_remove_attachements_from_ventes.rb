class RemoveAttachementsFromVentes < ActiveRecord::Migration[5.1]
  def change
    remove_column :ventes, :attachements, :json
  end
end
