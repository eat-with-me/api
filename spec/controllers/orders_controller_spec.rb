require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
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
end
