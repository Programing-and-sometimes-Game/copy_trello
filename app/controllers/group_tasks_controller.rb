class GroupTasksController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @group = Group.find(params[:group_id])
        @board = GroupBoard.find(params[:group_board_id])
        @list = GroupList.find(params[:group_list_id])
        @task = @list.group_tasks.new(group_task_params)
        @task.save
        redirect_to user_group_group_board_path(@user, @group, @board)
    end

    private
    def group_task_params
        params.require(:group_task).permit(:task_name)
    end
end
