class CreateFoodsUsers < ActiveRecord::Migration
  def change
    create_table :foods_users do |t|
      t.integer :user_id
      t.integer :food_id

      t.timestamps
    end
  end
end
