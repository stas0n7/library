class Author < ApplicationRecord
  extend FriendlyId

  has_many :authors_books
  has_many :books, through: :authors_books

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 50 }

  friendly_id :name, use: :slugged

  rails_admin do
    list do
      field :id
      field :name
      field :books
      field :created_at
    end

    show do
      field :name
      field :books
    end
  end
end
