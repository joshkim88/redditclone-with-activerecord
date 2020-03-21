class PublicController < ApplicationController

  def profile
    @profile = Account.find_by_username params[:username]
    @posts = @profile.posts
  end

end
