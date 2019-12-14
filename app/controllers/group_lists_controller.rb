class GroupListsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @group = Group.find(params[:group_id])
        @board = GroupBoard.find(params[:group_id])
        @list = @board.group_lists.new(group_list_params)
        @list.save
        redirect_to user_group_group_board_path(@user, @group, @board)
    end

    private
    def group_list_params
        params.require(:group_list).permit(:group_list_name)
    end
end
