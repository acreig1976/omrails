class RelationshipsController < ApplicationController
  def create
    @relationship = Relationship.new(relationship_params)
    @relationship.follower_id = current_user.id
    if @relationship.save
      redirect_to root_path
    else
      flash.now[:danger] = 'Error following user'
      render 'users/show'
    end
  end

  def destroy
  end

  protected

  def relationship_params
    params.require(:relationship).permit(:followed_id)
  end
end
