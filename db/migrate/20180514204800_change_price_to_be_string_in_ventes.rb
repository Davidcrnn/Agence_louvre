class ChangePriceToBeStringInVentes < ActiveRecord::Migration[5.1]
  def change
    change_column :ventes, :price, :string
  end
end
