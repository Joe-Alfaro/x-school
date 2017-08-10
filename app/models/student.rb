class Student < User
  belongs_to :team
  has_many :grades
  has_many :detentions
  has_one :teacher, through: :team
  has_many :sent_notes, class_name: "Note", foreign_key: :sender_id
  has_many :received_notes, class_name: "Note", as: :noteable

  validates :grade_level, presence: true
  validates_inclusion_of :grade_level, in: 6..12
  validates_inclusion_of :shirt_size, in: %w(xs s m l xl xxl)
  validates_inclusion_of :administrator, in: [false]

end
