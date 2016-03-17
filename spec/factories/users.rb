FactoryGirl.define do
  factory :user do
    email
    password 'aijsdoiajs'
  end

  sequence(:email) { |n| "user#{n}@eatwithme.com" }

end
