class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user_events = User.find(params[:id]).events.all
    @user = User.find(params[:id])
  end
end
