FactoryGirl.define do
  factory :topic do
    sequence(:name) { |n| "Topic ##{n}" }
    user

    factory :topic_with_posts do
      ignore do
        posts_count 3
      end

      after(:create) do |topic, evaluator|
        create_list(:post, evaluator.posts_count, topic: topic)
      end
    end
  end
end
