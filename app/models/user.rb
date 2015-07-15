class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :foods, foreign_key: "food_id", through: :foods_user
  has_and_belongs_to_many :exercises, foreign_key: "exercise_id", through: :exercises_user

  validates :password, confirmation: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

  def total_food_calories
    calories_array = self.foods.map { |food| food.calories_done_et }
    if output = calories_array.inject {|total, n| total + n}
      return output
    else
      return 0
    end
  end

  def total_exercise_calories
    # return self.exercises.calories_used.all.inject {|total, n| total + n}
    calories_array = self.exercises.map { |exercise| exercise.calories_used }
    if output = calories_array.inject { |total, n| total + n }
      return output
    else
      return 0
    end
  end

  def net_calories
    return (self.total_food_calories - self.total_exercise_calories)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
end
