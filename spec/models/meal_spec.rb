require 'rails_helper'

RSpec.describe Meal, type: :model do
  it "adds Meal" do
    meal = create(:meal)

    expect(meal.name.length > 0).to be(true)
    expect(meal.price).to eq(12.5)
    expect(meal.restaurant.phone_number).to eq("231 241 241")
  end
end