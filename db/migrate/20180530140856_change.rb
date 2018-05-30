class Change < ActiveRecord::Migration[5.1]
  def change
    change_column :locations, :surface, :string
  end
end
