require 'rails_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it { should validate_presence_of :password }
  it { should validate_confirmation_of :password }

  it "computes calorie stuff" do
    user = FactoryGirl.create(:user)
    food = FactoryGirl.create(:food)
    2.times {user.foods.push(food)}
    # my_food_2 = user.foods.push(food)
    exercise = FactoryGirl.create(:exercise)
    my_exercise = user.exercises.push(exercise)
    expect(user.foods.name).to(equal(["cheeseburger", "cheeseburger"]))
    expect(user.net_calories).to(equal(2388))
    expect(user.total_food_calories).to(equal(2400))
    expect(user.total_exercise_calories).to(equal(12))
  end
end
