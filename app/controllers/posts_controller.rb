class PostsController < ApplicationController
  before_action :authenticate_account!, except: [ :index, :show ]
  before_action :set_subreddit, only: [:show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[subreddit_id])
  end

  def new
    @subreddit = Subreddit.find(params[:subreddit_id])
    @post = Post.new
  end

  def create
    @post = Post.new post_values
    @post.account_id = current_account.id
    @post.subreddit_id = params[:subreddit_id]

    if @post.save
      redirect_to subreddit_path(@post.subreddit_id)
    else
      @subreddit = Subreddit.find(params[:subreddit_id])
      render :new
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_values
    params.require(:post).permit(:title, :body)
  end

end