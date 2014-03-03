FactoryGirl.define do
  factory :post do
    content "This is important!"
    user
  end
end
