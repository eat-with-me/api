FactoryGirl.define do
  factory :user do
    email
    password '12345678'
  end

  sequence(:email) { |n| "user#{n}@eatwithme.com" }

end
