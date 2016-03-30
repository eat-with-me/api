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
end