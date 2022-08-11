class UsersController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
    @users = User.all
    @user = current_user
  end
  
  def show
    @book = Book.new
    @user = current_user
    @books = @user.books
  end
  
  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
     redirect_to book_path(@book.id)
    else
     render:index
    end
  end  
  
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

 
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
end
