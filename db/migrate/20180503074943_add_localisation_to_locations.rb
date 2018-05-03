class AddLocalisationToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :localisation, :string
    add_column :locations, :string, :string
  end
end
