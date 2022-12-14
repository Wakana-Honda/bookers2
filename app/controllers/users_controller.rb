class UsersController < ApplicationController

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end
  
  def index
    @book = Book.new
    @books = Book.all
    @users = User.all
    @user = current_user
  end
  
  #def create
   # @books = Book.all
    #@book = Book.new(book_params)
    #@book.user_id = current_user.id
    #if @book.save
     #redirect_to book_path(@book.id)
    #else
     #render:index
    #end
  #end  
  
  
  def edit
    @user = User.find(params[:id])
    if @user == current_user
        render "edit"
    else
      redirect_to user_path(current_user)
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user),notice:"You have updated user successfully."
    else
     render:edit
    end
  end

 
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end
