class Book < ApplicationRecord
  has_many :authors_books
  has_many :authors, through: :authors_books
  belongs_to :category

  mount_uploader :cover, CoverUploader

  validates :title, presence: true

  def outside_authors
    Author.all - authors
  end
end
