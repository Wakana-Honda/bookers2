class UsersController < ApplicationController

  def index
    @user = current_user
  end
  
  def show
    @user = current_user
  end
  
  def create
  end  
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to edit_user_path
  end

 
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
end
