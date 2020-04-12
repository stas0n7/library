class Category < ApplicationRecord
  extend FriendlyId

  has_many :books

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 50 }

  friendly_id :title, use: :slugged

  def outside_books
    Book.all - books
  end
end
