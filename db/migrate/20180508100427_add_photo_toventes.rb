class AddPhotoToventes < ActiveRecord::Migration[5.1]
  def change
    add_column :ventes, :photo, :string
  end
end
