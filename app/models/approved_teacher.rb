class ApprovedTeacher < ApplicationRecord
  validates :code, :email, presence: true
end
