require 'rails_helper'

RSpec.describe Rule, type: :model do
  Rule.create!({
    teacher_id: 1,
    attribute: 'students',
    criteria: '>',
    value: '1',
    modifier: 'number of,
    active: 'true'
  })

  describe '#allows?' do

  end
end
