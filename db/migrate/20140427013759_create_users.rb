class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :eve_key
      t.string :email

      t.timestamps
    end
  end
end
