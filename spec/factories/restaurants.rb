FactoryGirl.define do
  factory :restaurant do
    sequence(:name) { |n| "Producent Pizzy #{n}" }
    phone_number "231 241 241"


    factory :restaurant_with_meals do
      transient do
        meals_count 5
      end

      after(:create) do |restaurant, evaluator|
        type1 = create(:meal_type)
        create_list(:meal, evaluator.meals_count, restaurant: restaurant, meal_type: type1)

        type2 = create(:meal_type)
        create_list(:meal, evaluator.meals_count, restaurant: restaurant, meal_type: type2)
      end
    end
  end

end
