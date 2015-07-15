FactoryGirl.define do

  factory(:user) do
    email('Rock@Rock.rk')
    password('12341234')
    password_confirmation('12341234')
  end

  factory(:exercise) do
    name('situps')
    hours(12)
    calories_per_hour(1)
  end

  factory(:food) do
    name('cheeseburger')
    calories(1201)
  end

end
