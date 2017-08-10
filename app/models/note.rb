class Note < ApplicationRecord
  belongs_to :noteable, polymorphic: true
  belongs_to :sender, polymorphic: true

  validates :content, :noteable_id, :sender_id, presence: true
end
