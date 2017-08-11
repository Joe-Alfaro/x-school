class Teacher < User
  has_many :rules
  has_many :detentions, foreign_key: :issuer_id
  has_one :team, foreign_key: :teacher_id
  has_many :received_notes, class_name: "Note", foreign_key: :noteable_id
  has_many :sent_notes, class_name: "Note", foreign_key: :sender_id
  has_many :students, through: :team

  # validates :administrator, presence: true
end
