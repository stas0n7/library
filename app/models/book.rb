class Book < ApplicationRecord
  has_many :authors_books
  has_many :authors, through: :authors_books
  validates :title, presence: true
  validate :set_author

  private

  def set_author
    if authors.size < 1
      errors.add(:base, 'book should receive at least 1 author')
    end
  end
end
