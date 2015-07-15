class Food < ActiveRecord::Base

  has_and_belongs_to_many :user

  validates :name, presence: true
  validates :calories, presence: true

end
