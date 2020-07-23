class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @posts = current_user.posts
    @events = Event.where(user_id: 2)
    @event = Event.new
  end
end
