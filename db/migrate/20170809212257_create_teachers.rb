class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :type => 'Teacher'

      t.timestamps
    end
  end
end
