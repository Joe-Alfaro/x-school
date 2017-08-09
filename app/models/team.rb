class Team < ApplicationRecord
  belongs_to :teacher
  has_many :students

  validates :teacher_id, :name, presence: true
end
