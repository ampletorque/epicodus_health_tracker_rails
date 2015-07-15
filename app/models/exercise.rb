class Exercise < ActiveRecord::Base

  has_and_belongs_to_many :users, foreign_key: "user_id", through: :foods_user

  validates :name, presence: true
  validates :calories_per_hour, presence: true

  def calories_used
    return (self.calories_per_hour * self.exercises_user.hours);
  end

end
