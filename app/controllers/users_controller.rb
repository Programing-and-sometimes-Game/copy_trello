class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :show, :update]

  def edit
  end

  def update
    if @current_user.update(edit_user_params)
      redirect_to user_path(@current_user.id)
    else
      render 'edit'
    end
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
    @groups = Group.where(owner_user_id: @current_user)
    begin
      @user = User.find(params[:id])
      if @current_user.id != @user.id
        redirect_to user_path(@current_user.id)
      end
    rescue
      redirect_to user_path(@current_user.id)
    end
  end

  private
  def find_user
    @current_user = User.find(session[:user_id])
  end

  def edit_user_params
    params.require(:user).permit(:name, :mail, :profile_image)
  end

  def user_params
    params.require(:user).permit(:name, :mail, :password)
  end
end

