class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :borrow_date, :return_date, presence: true
end
