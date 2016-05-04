FactoryGirl.define do
  factory :meal_type do
    sequence(:name) { |n| "Rodzaj #{n}" }
  end

end
