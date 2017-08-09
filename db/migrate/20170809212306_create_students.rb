class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :hero_name
      t.string :superpower
      t.string :gender

      t.integer :grade_level, default: 1
      t.references :team, null: false
      t.string :shirt_size

      t.timestamps
    end
  end
end
