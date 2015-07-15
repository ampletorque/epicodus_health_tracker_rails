class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :foods
  has_and_belongs_to_many :exercises

  validates :password, confirmation: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

  def total_food_calories
    # binding.pry
    calories_array = self.foods.map { |food| food.calories }
    calories_array.inject {|total, n| total + n}
  end

  def total_exercise_calories
    # return self.exercises.calories_used.all.inject {|total, n| total + n}
    calories_array = self.exercises.map { |exercise| exercise.calories_used }
    calories_array.inject { |total, n| total + n }
  end

  def net_calories
    return (self.total_food_calories - self.total_exercise_calories)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
end
