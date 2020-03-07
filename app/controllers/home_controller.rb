class HomeController < ApplicationController
  def index
    @subreddits = Subreddit.all.limit(5)
    @posts = Post.all
  end

end
