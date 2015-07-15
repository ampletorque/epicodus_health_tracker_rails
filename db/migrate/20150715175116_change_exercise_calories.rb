class ChangeExerciseCalories < ActiveRecord::Migration
  def change
    rename_column :exercises, :calories, :calories_per_hour
  end
end
