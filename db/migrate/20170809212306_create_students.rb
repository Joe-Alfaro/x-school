class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :type => 'Student'

      t.timestamps
    end
  end
end
