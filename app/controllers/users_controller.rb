class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user_events = current_user.events.all
    @user = User.find(params[:id])
  end

  
end
