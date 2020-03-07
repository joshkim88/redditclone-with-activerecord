class HomeController < ApplicationController
  def index
    @subreddits = Subreddit.all.limit(10)
    @posts = Post.all.limit(1000)
  end

  def show
    @post = Post.find{params[:post_id]}
  end

end
