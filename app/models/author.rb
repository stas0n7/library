class Author < ApplicationRecord

  has_many :authors_books
  has_many :books, through: :authors_books

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 50 }

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

  def decorate
    TitleDecorator.decorate(self)
  end

end
