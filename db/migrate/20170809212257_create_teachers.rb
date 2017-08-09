class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :hero_name
      t.string :superpower
      t.string :gender

      t.boolean :administrator, default: false

      t.timestamps
    end
  end
end
