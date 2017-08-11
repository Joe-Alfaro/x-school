class Rule < ApplicationRecord
  belongs_to :teacher

  validates :attribute, :criteria, :value, :active, presence: true

  def allows?(student_to_be_added, students_on_team)
    students = students_on_team
    students << student_to_be_added

    if self[:modifier] == 'number of' && self[:attribute] == students
      return true if eval eval "'#{students.length}' #{self[:criteria]} #{self[:value]}"
      return false
    end
    # students.each do |student|
    #   eval eval "#{student[self[:attribute]]} #{self[:criteria]} #{self[:value]}"
    # end

  end
end
