class AddLocalisationToVentes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :localisation, :string
  end
end
