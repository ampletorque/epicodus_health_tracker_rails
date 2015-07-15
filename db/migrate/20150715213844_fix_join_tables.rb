class FixJoinTables < ActiveRecord::Migration
  def change
    remove_column :exercises, :hours
    remove_column :foods, :quantity
    add_column :exercises_users, :hours, :integer
    add_column :foods_users, :quantity, :integer
  end
end
