FactoryGirl.define do
  factory :forum do
    sequence(:name) { |n| "Forum ##{n}" }
    sequence(:description) { |n| "Better than forum ##{n - 1}!" }
  end
end
