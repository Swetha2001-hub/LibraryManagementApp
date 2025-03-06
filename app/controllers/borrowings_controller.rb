class BorrowingsController < ApplicationController
  def index
    @borrowings = Borrowing.all
  end

  def new
    @borrowing = Borrowing.new(book_id: params[:book_id])
  end

  def create
    @borrowing = Borrowing.new(borrowing_params)
    
    if @borrowing.save
      redirect_to borrowings_path, notice: "Book borrowed successfully!"
    else
      render :new
    end
  end
  

  private

  def borrowing_params
    params.require(:borrowing).permit(:user_id, :book_id, :borrow_date, :return_date)
  end
end
