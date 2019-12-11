class ListsController < ApplicationController
  def create
  	@user = User.find(session[:user_id])
    @board = Board.find(params[:board_id])
    @list =@board.lists.new(list_params)
  	if @list.save
  		redirect_to user_board_path(@user, @board)
  	else
  		render 'new'
  	end
  end
  private
  def list_params
  	params.require(:list).permit(:list_name)
  end
end
