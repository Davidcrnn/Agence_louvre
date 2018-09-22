class AddSaleToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :sale_id, :integer
  end
end
