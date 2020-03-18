class PostsController < ApplicationController
  before_action :authenticate_account!, except: [ :index, :show, ]
  before_action :set_post, only: [:show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
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
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params[:id])
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_values
    params.require(:post).permit(:title, :body)
  end

end
