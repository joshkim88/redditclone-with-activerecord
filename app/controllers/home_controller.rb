class HomeController < ApplicationController
  def index
    @subreddits = Subreddit.all.limit(5)
  end
end
