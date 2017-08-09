class CreateRules < ActiveRecord::Migration[5.1]
  def change
    create_table :rules do |t|
      t.references :teacher, null: false
      t.string :attribute, null: false
      t.string :criteria, null: false
      t.string :value, null: false
      t.string :modifier, null: false
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
