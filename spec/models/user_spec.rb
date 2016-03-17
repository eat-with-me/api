require 'rails_helper'

RSpec.describe User, type: :model do
  it "adds Restaurant" do
    restaurant = create(:restaurant)

    expect(restaurant.name).to eq("Pizza Station")
    expect(restaurant.phone_number).to eq("231 241 241")
  end
end
