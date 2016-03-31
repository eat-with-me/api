FactoryGirl.define do
  factory :restaurant do
    sequence(:name) { |n| "Producent Pizzy #{n}" }
    phone_number "231 241 241"


    factory :restaurant_with_meals do
      transient do
        meals_count 10
      end

      after(:create) do |restaurant, evaluator|
        create_list(:meal, evaluator.meals_count, restaurant: restaurant)
      end
    end
  end

end
