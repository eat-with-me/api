FactoryGirl.define do
  factory :restaurant do
    sequence(:name) { |n| "Producent Pizzy #{n}" }
    phone_number "231 241 241"
  end

end
