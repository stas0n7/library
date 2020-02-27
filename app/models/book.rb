class Book < ApplicationRecord
  has_many :authors_books
  has_many :authors, through: :authors_books
  validates :title, presence: true

  scope :fantasy, -> { where(category: 'fantasy') }
  scope :management, -> { where(category: 'management') }
end
