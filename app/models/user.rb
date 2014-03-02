class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :topics
  has_many :posts
end
