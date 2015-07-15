class FoodsUser < ActiveRecord::Base
  validates :quantity, presence: true
  belongs_to :user
  belongs_to :food
end
