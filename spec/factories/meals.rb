FactoryGirl.define do
  factory :meal do
    name
    price 12.5
    restaurant
  end

  sequence(:name) { |n| "posiłek#{n}" }
end
