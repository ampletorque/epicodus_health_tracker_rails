class Food < ActiveRecord::Base

  has_and_belongs_to_many :users, foreign_key: "user_id", through: :exercises_user

  validates :name, presence: true
  validates :calories, presence: true

  def calories_done_et
    return (self.calories * self.foods_user.quantity);
  end


end
