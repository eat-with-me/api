require 'rails_helper'

RSpec.describe Order, type: :model do
  it "makes users order" do
    order = create(:order)
    user = create(:user)
    order.purchasers.create(user: user)

    expect(order.users[0]).to eq(user)
    expect(user.orders[0]).to eq(order)
  end

  it "makes users order with meals" do
    order = create(:order)
    user = create(:user)
    purchaser = order.purchasers.create(user: user)

    meal1 = create(:meal)
    meal2 = create(:meal)

    purchaser.meals_lists.create([{meal: meal1, amount: 20},{meal: meal2, amount: 10}])
    expect(purchaser.meals_lists[0].meal).to eq(meal1)
    expect(purchaser.meals_lists[1].meal).to eq(meal2)
  end
end
