FactoryGirl.define do
  factory :group do
    sequence(:name) { |n| "Grupa #{n}" }

    factory :group_with_orders do
      transient do
        orders_count 5
      end

      after(:create) do |group, evaluator|
        create_list(:order, evaluator.orders_count, group: group)
      end
    end
  end

end
