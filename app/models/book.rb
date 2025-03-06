class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :borrowings
  has_many :users, through: :borrowings

  validates :title, presence: true
end

