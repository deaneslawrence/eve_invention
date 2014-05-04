class CreateBlueprintUsers < ActiveRecord::Migration
  def change
    create_table :blueprint_users do |t|
      t.integer :blueprint_id
      t.integer :user_id
      t.integer :preferred_decryptor

      t.timestamps
    end
  end
end
