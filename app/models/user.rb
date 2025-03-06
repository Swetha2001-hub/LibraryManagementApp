class User < ApplicationRecord
    has_many :borrowings
    has_many :books, through: :borrowings
  
    validates :name, :email, presence: true
    validates :email, uniqueness: true
  end
  
