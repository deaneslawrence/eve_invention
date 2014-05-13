class AddIndexToBlueprintUsersOnBlueprintIdAndUsersId < ActiveRecord::Migration
  def change
  	add_index :blueprint_users, [:blueprint_id, :user_id], unique: true
  end
end
