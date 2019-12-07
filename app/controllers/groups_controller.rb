class GroupsController < ApplicationController
  def show
  end

  def new
    @user = User.find(1)
    @group = Group.new
  end

  def create
    @user = User.find(1)
    @group = Group.new(group_params)
    if @group.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end 

  def edit
  end

  private
  def group_params
    params.require(:group).permit(:group_name, :description, :group_image).merge(owner_user_id: @user.id)
  end 
end
