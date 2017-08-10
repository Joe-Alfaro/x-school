class Rule < ApplicationRecord
  belongs_to :teacher

  validates :attribute, :criteria, :value, :modifier, :active, presence: true
end
