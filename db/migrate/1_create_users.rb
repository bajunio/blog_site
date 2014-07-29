class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :user_name, :email, :password_hash, :password_saltex
      t.timestamps
    end
  end
end
