require 'rails_helper'

describe Exercise do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories_per_hour }
  it { should validate_presence_of :hours }
  it { should have_and_belong_to_many :users}

end
