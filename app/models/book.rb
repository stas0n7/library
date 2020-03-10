class Book < ApplicationRecord
  has_many :authors_books
  has_many :authors, through: :authors_books
  belongs_to :category

  validates :title, presence: true
  validates :cover, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 50 }

  mount_uploader :cover, CoverUploader



  def outside_authors
    Author.all - authors
  end
end
