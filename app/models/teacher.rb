class Teacher < User
  has_many :rules
  has_many :detentions, foreign_key: :issuer_id
  has_one :team
  has_many :received_notes, class_name: Note, as: :noteable
  has_many :sent_notes, class_name: Note, foreign_key: :sender
  has_many :students, through: :team

  validates :administrator, presence: true
end
