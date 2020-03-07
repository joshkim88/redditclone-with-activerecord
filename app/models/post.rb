class Post < ApplicationRecord
  belongs_to :account
  belongs_to :subreddit
  validates_presence_of :title, :body, :account_id, :subreddit_id
end
