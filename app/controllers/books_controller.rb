class BooksController < ApplicationController
  def index
    @book = Book.new
  end
  
  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end
  
  def show
   @book = Book.find(params[:id])
  end
  
  private

  def book_params
    params.require(:book).permit(:image, :title, :body)
  end
  
end
