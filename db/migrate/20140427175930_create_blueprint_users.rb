class CreateBlueprintUsers < ActiveRecord::Migration
  def change
    create_table :blueprint_users do |t|

      t.timestamps
    end
  end
end
