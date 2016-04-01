FactoryGirl.define do
  factory :order do
    closing_time "2016-03-17 21:03:55"
    association :restaurant, factory: :restaurant_with_meals
    group
  end

end
