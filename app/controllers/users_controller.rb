class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user_events = current_user.events.all
  end
end
