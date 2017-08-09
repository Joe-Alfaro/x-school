class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.boolean :administrator, default: false

      t.timestamps
    end
  end
end
