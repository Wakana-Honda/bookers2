class UsersController < ApplicationController
  before action:authenticate_user!
  
  def show
    @book = Book.new
    @users = Use.all
  end
  
  
  def edit
  end
end
