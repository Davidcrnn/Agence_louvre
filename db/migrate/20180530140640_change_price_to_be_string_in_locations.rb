class ChangePriceToBeStringInLocations < ActiveRecord::Migration[5.1]
  def change
    change_column :locations, :price, :string
  end
end
