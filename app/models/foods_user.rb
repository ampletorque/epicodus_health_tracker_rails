class FoodsUser < ActiveRecord::Base
  validates :quantity, presence: true
  belongs_to :user
  belongs_to :food
  scope :by_user, lambda { |user| { :conditions => {:user_id => user.id}}}
  scope :by_food, lambda { |food| { :conditions => {:food_id => food.id}}}
  scope :since, lambda { |timestamp| {:conditions => {:created_at => (timestamp .. Time.now.utc)}}}
end
