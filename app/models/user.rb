class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: %w[user admin_book admin_category admin]

  rails_admin do
    list do
      field :id
      field :role
      field :created_at
    end
  end

end
