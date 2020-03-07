class SubredditsController < ApplicationController
  before_action :authenticate_account!, except: [ :index, :show ]
  before_action :set_subreddit, only: [:show]

  def index
    @subreddits = Subreddit.all
  end

  def show
  end

  def new
    @subreddit = Subreddit.new
  end

  def create
    @subreddit = Subreddit.new subreddit_values
    @subreddit.account_id = current_account.id

    if @subreddit.save
      redirect_to subreddits_path
    else
      render :new
    end
  end

  private

  def set_subreddit
    @subreddit = Subreddit.find(params[:id])
  end

  def subreddit_values
    params.require(:subreddit).permit(:name, :url, :rules)
  end

end
