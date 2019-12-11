class GroupMembersController < ApplicationController
  def index
  end

  def create
    @user = User.find(params[:user_id])
    member = @user.group_member.build(user_id: @user, group_id: params[:group_id])
    member.save
    redirect_to user_path(@user)
  end
end
