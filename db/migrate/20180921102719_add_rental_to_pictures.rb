class AddRentalToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :rental_id, :integer
  end
end
