class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :calories
      t.integer :hours

      t.timestamps null: false
    end
  end
end
