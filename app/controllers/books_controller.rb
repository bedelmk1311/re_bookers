class BooksController < ApplicationController
  # 投稿フォームのあるページを表示するアクション
  def new
    @book = Book.new
  end
  
  # 投稿を保存するためのアクション
  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def edit
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
