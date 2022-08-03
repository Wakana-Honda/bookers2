class UsersController < ApplicationController

  def show
    @user=current_user
    @books=@user.books
  end
  
  def edit
  end
end
