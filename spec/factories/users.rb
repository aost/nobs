FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "User #{n}" }
    sequence(:email) { |n| "email#{n}@example.io" }
    crypted_password "random stuff"
    salt "more random stuff"
  end
end
