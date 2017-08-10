class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, :password_digest, :first_name, :last_name, :hero_name, :superpower, :gender, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 3}, if: -> { new_record? || changes[:crypted_password]}

end
