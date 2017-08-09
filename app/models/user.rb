class User < ApplicationRecord
  validates :email, :password_digest, :first_name, :last_name, :hero_name, :superpower, :gender, presence: true
end
