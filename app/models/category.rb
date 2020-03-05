class Category < ApplicationRecord
  has_many :books
  validates :title, presence: true

  def outside_books
    Book.all - books
  end
end
