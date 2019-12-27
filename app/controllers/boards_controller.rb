class BoardsController < ApplicationController
  def new
  	@board =Board.new
    @user = User.find(session[:user_id])
  end

  def create
    @user = User.find(session[:user_id])
  	@board = Board.new(board_params)
  	if @board.save
      @board_user = @board.add_user_to_boards.build(user_id: @user.id, board_id: @board, activation: true)
      @board_user.save!
  		redirect_to user_board_path(@user, @board)
  	else
  	    render 'new'
    end
  end

  def show
  	@board = Board.find(params[:id])
    @user = User.find(session[:user_id])
    @list =List.new
  	@lists = @board.lists.all
    @task =Task.new
  end

  private

  def board_params
     params.require(:board).permit(:board_image,:board_name)
  end

  def list_params
     params.require(:list).permit(:list_name)
  end

  def task_params
     parama.require(:task).permit(:task_name, :description)
  end
end
