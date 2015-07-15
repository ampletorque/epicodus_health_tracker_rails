class CreateExercisesUsers < ActiveRecord::Migration
  def change
    create_table :exercises_users do |t|
        t.integer :user_id
        t.integer :exercise_id

        t.timestamps
    end
  end
end
