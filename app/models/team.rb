class Team < ApplicationRecord
  belongs_to :teacher
  has_many :students

  validates :teacher, :name, presence: true
end
