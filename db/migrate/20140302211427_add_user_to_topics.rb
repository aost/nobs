class AddUserToTopics < ActiveRecord::Migration
  def change
    add_reference :topics, :user, index: true
  end
end
