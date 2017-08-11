class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.integer :score, default: 0
      t.references :student, null: false

      t.timestamps
    end
  end
end
