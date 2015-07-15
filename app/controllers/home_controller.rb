class HomeController < ApplicationController
before_filter :authenticate_user!
  def index
    @user = current_user
    @foods = Food.all
    @exercises = Exercise.all
    @eaten_foods = FoodsUser.by_user(current_user)#.since(2.weeks.ago)#.by_food("cheeseburger")
    # binding.pry
    @since_foods = FoodsUser.since(2.weeks.ago)
  end
end
