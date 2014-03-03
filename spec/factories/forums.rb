FactoryGirl.define do
  factory :forum do
    sequence(:name) { |n| "Forum ##{n}" }
    sequence(:description) { |n| "Better than forum ##{n - 1}!" }

    factory :forum_with_topics do
      ignore do
        topics_count 3
      end

      after(:create) do |forum, evaluator|
        create_list(:topic, evaluator.topics_count, forum: forum)
      end
    end
  end
end
