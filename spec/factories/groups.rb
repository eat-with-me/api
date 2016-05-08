FactoryGirl.define do
  factory :group do
    sequence(:name) { |n| "Grupa #{n}" }

    factory :group_with_orders do
      transient do
        orders_count 5
        users_count 5
      end

      after(:create) do |group, evaluator|
        owner = FactoryGirl.create(:user)
        group.users << owner
        create_list(:order, evaluator.orders_count, group: group, owner: owner)
        [*1..evaluator.users_count].each do
          group.users << FactoryGirl.create(:user)
        end
      end

    end
  end

end
