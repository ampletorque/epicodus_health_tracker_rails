require 'rails_helper'

describe Food do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories }
  it { should have_and_belong_to_many :users}

end
