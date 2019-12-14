class TasksController < ApplicationController
  def create
  	@user = User.find(session[:user_id])
  	@board = Board.find(params[:board_id])
  	@list = List.find(params[:list_id])
  	@task = @list.tasks.new(task_params)
  	if @task.save
  	  redirect_to user_board_path(@user, @board)
  	else
  	  render 'new'
  	end
  end
  	private
  	def task_params
  		params.require(:task).permit(:task_name, :description)
  	end
end
