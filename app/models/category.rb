class Category < ApplicationRecord
  has_many :books

  def outside_books
    Book.all - books
  end
end
