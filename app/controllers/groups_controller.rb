class GroupsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @group = Group.find(params[:id])
    @boards = Group_board.where(group_id; @group)
  end

  def new
    @group = Group.new
    @user = session[:user_id]
    # @member = GroupMember.new
  end

  def create
    @user = User.find(params[:user_id])
    @group = Group.new(group_params)
    
    if @group.save
      @member = @group.group_members.build(user_id: session[:user_id], group_id: @group, activation: true)
      # member = GroupMember.create!(uesr_id: @user, group_id: @group, activation: true)
      @member.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end 

  def edit
  end

  private
  def group_params
    @user = session[:user_id]
    params.require(:group).permit(:group_name, :description, :group_image).merge(owner_user_id: @user)
  end 
end
