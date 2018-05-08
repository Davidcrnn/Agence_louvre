class AddUserToVentes < ActiveRecord::Migration[5.1]
  def change
    add_reference :ventes, :user, foreign_key: true
  end
end
