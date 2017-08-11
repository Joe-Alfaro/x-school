class User < ApplicationRecord
  validates :email, :password, :first_name, :last_name, :hero_name, :superpower, :gender, presence: true

  validates :email, uniqueness: true

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
