class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :title
      t.integer :point_cost

      t.timestamps null: false
    end
  end
end
