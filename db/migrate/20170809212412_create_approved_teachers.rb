class CreateApprovedTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :approved_teachers do |t|
      t.string :code, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
