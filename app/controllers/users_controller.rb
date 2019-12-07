class UsersController < ApplicationController

  def edit
  end

  def update
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
      @user = User.find(params[:id])
      @current_user = User.find(session[:user_id])
      if @current_user.id != @user.id
        redirect_to user_path(@current_user.id)
      end
  end

  private
    def user_params
     params.require(:user).permit(:name, :mail, :password)
    end
end

