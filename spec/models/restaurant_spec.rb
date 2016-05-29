require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "adds Restaurant" do
    restaurant = create(:restaurant)

    expect(restaurant.name.length > 0).to be(true)
    expect(restaurant.phone_number).to eq("231 241 241")
    expect(restaurant.shipping_cost).to eq(56.0)
  end

  it "adds Restaurant with meals" do
    restaurant = create(:restaurant_with_meals)

    expect(restaurant.meals.length).to eq(10)
  end
end
