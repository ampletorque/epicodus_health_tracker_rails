class Exercise < ActiveRecord::Base

  has_and_belongs_to_many :user

  validates :name, presence: true
  validates :calories_per_hour, presence: true
  validates :hours, presence: true

  def calories_used
    return (self.calories_per_hour * self.hours);
  end

end
