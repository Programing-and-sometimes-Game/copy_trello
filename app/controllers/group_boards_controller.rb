class GroupBoardsController < ApplicationController
  before_action :set_params, only: [:show, :new, :create]
  def show
    @board = GroupBoard.find(params[:id])
    @list  = @board.group_lists.new
    @lists = @board.group_lists.all
    @task  = @list.group_tasks.new
    @tasks = @list.group_tasks.all
  end

  def new
    @group_board = @group.group_boards.new
  end

  def create
    @group_board = @group.group_boards.new(group_board_params)
    @group_board.save
    redirect_to user_group_path(@user, @group)
    # else
    #   render 'new'
    # end
  end

  private
  def group_board_params
    params.require(:group_board).permit(:group_board_name)
  end

  def set_params
    @user = User.find(params[:user_id])
    @group = Group.find(params[:group_id])
  end
end
