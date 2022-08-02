class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end
  
  private

  def book_params
    params.require(:book).permit(:image, :title, :body)
  end
  
end
