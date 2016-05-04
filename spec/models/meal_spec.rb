require 'rails_helper'

RSpec.describe Meal, type: :model do
  it "adds Meal" do
    meal = create(:meal)

    expect(meal.name.length > 0).to be(true)
    expect(meal.price).to eq(12.5)
    expect(meal.restaurant.phone_number).to eq("231 241 241")
  end

  it "adds Meal with type" do
    meal_type = create(:meal_type)
    meal = build(:meal)
    meal_type.meals.create({
      name: meal[:name],
      price: meal[:price],
      restaurant_id: meal[:restaurant_id]
    })

    expect(meal_type.meals.length).to eq(1)
    expect(meal_type.meals[0].name).to eq(meal[:name])
  end
end
