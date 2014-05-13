class CreateBlueprintUsers < ActiveRecord::Migration
  def change
    create_table :blueprint_users do |t|

      t.references :blueprint
      t.references :user
      t.integer :preferred_decryptor

      t.timestamps
    end
  end
end
