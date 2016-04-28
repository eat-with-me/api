require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe 'group' do
    it 'create' do
      sign_in create(:user)

      get :create, {name: "groupa 1"}
      output = JSON.parse(response.body)

      expect(output["name"]).to eq("groupa 1")
    end

  end
end
