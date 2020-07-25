class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @posts = current_user.posts
    @user = User.find(params[:id])
    @events = Event.where(user_id: current_user.id)
    @event = Event.new
  end
end
