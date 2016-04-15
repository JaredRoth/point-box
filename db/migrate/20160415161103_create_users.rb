class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :available_points
      t.integer :redeemed_points
      t.string :role

      t.timestamps null: false
    end
  end
end
