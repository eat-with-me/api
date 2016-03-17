require 'rails_helper'

RSpec.describe Group, type: :model do
  it "User joins to created Group" do
    user = create(:user)
    group = create(:group)

    group.users << user

    expect(group.users.length).to eq(1)
  end
end
