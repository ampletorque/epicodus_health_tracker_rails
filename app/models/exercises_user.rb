class ExercisesUser < ActiveRecord::Base
  validates :hours, presence: true
  belongs_to :user
  belongs_to :exercise
end
