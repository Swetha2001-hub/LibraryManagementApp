class BooksController < ApplicationController
  def index
    if params[:search].present?
      @books = Book.joins(:author, :category)
                   .where("books.title LIKE :query OR authors.name LIKE :query OR categories.name LIKE :query", 
                          query: "%#{params[:search]}%")
    else
      @books = Book.all
    end
  end
  

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
  
    if @book.save
      redirect_to books_path, notice: "Book added successfully!"
    else
      render :new  
    end
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :author_id, :category_id)
  end
  
  
end
