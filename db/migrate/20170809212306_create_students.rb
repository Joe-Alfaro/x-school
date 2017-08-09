class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :grade_level, default: 1
      t.references :team, null: false
      t.string :shirt_size

      t.timestamps
    end
  end
end
