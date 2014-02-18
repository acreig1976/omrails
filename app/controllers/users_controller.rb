class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per_page(20)
    @relationship = Relationship.new
  end
end
