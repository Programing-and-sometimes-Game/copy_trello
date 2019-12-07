class UsersController < ApplicationController
  before_filter :find_user, only: [:edit, :show, :update]
  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  def new
  end

  def create
  end

  def show
    @groups = Group.where(owner_user_id: @user.id)
  end

  private
  def find_user
    @user = User.find(1)
  end

  def user_params
    params.require(:user).permit(:name, :mail, :profile_image)
  end
end
