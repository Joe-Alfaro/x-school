class Grade < ApplicationRecord
  belongs_to :student

  validates :score, :student_id, presence: true
end
