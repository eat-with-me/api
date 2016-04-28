require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      sign_in create(:user)
      group = create(:group_with_orders)

      get :index, group_id: group.id
      output = JSON.parse(response.body)

      expect(output.length).to be(5)
    end
  end

  describe 'POST #create' do
    before(:example) do
      group = create(:group_with_orders)
      restaurant = create(:restaurant)
      sign_in create(:user)
      @order = {
        group_id: group[:id],
        restaurant_id: restaurant[:id],
        closing_time: "12:00"
      }
    end

    it 'returns http success' do
      post :create, @order
      output = JSON.parse(response.body)

      puts output
    end
  end

  describe 'participants' do
    before(:example) do

      group = create(:group_with_orders)
      restaurant = create(:restaurant)
      meals = create_list(:meal, 5)

      sign_in group.users[1]

      @order = {
        id: group.orders[0].id,
        group_id: group[:id]
      }

      @purchasers = {
        group_id: group[:id],
        order: {
          id: group.orders[0].id,
          meals: [
            {meal_id: meals[3].id, amount: 12},
            {meal_id: meals[1].id, amount: 4},
            {meal_id: meals[2].id, amount: 20}
          ]
        }
      }
    end

    it 'gets' do
      post :purchasers_create, @purchasers
      get :show, @order
      output = JSON.parse(response.body)
      # puts output
    end

    it 'create' do
      post :purchasers_create, @purchasers
      output = JSON.parse(response.body)
      # puts output
      expect(output.length).to be(3)
    end
  end
end
