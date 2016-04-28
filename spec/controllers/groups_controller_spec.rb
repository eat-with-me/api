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

    it 'adds user' do
      user1 = create(:user)
      user2 = create(:user)
      sign_in user1
      group = create(:group)
      group.users << user2

      get :add_user, {token: group.token}
      output = JSON.parse(response.body)

      expect(group.users.length).to eq(2)
      expect(group.users[0].email).to eq(user1.email)
      expect(group.users[1].email).to eq(user2.email)
    end
    it 'index' do
      user = create(:user)
      user2 = create(:user)
      sign_in user
      group = create(:group_with_orders)
      group.users << [user, user2]

      get :index
      output = JSON.parse(response.body)
      expect(output[0]["users"].length).to eq(8)
    end

  end
end
