FactoryGirl.define do
  factory :group do
    sequence(:name) { |n| "Grupa #{n}" }
  end

end
