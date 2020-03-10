class Category < ApplicationRecord
  has_many :books

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 50 }

  def outside_books
    Book.all - books
  end
end
