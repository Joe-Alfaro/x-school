class Detention < ApplicationRecord
  belongs_to :issuer, class_name: Teacher, foreign_key: :issuer_id
  belongs_to :student

  validates :issuer_id, :student_id, presence: true
end
