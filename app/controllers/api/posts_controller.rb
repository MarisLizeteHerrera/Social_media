class Api::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: User.random_post(current_user.liked_posts)
  end

  def update
    current_user.liked_posts << params[:id].to_i
    current_user.save
  end
end
