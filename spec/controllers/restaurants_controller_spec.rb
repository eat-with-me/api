require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
  describe 'GET' do
    it 'returns http success' do
      sign_in create(:user)
      restaurants = create_list(:restaurant_with_meals, 5)

      get :index
      output = JSON.parse(response.body)

      expect(output[0]["name"]).to eq(restaurants[0][:name])
      expect(output.length).to eq(5)
    end

    it 'returns http success' do
      sign_in create(:user)
      restaurant = create(:restaurant_with_meals)

      get :show, id: restaurant.id
      output = JSON.parse(response.body)

      expect(output["name"]).to eq(restaurant[:name])
    end
  end

end
