class HomeController < ApplicationController
before_filter :authenticate_user!
  def index
    @user = current_user
    @foods = Food.all
    @exercises = Exercise.all
  end
end
