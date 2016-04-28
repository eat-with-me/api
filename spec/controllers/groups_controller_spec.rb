require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe 'group' do
    it 'create' do
      user = create(:user)
      sign_in user

      get :create, {name: "groupa 1"}
      output = JSON.parse(response.body)
      group = Group.find(output["id"])

      expect(group.name).to eq("groupa 1")
      expect(group.users.length).to eq(1)
      expect(group.users[0].email).to eq(user.email)
    end

  end
end
