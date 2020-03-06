class SubredditsController < ApplicationController
  before_action :authenticate_account!, except: [ :index, :show ]

  def index
    @subreddits = Subreddit.all
  end

  def show
  end

  def new
    @subreddit = Subreddit.new
  end

  def create
  end

end
