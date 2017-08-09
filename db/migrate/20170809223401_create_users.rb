class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :hero_name
      t.string :superpower
      t.string :gender

      # Teacher specific
      t.boolean :administrator, default: false

      # Student specific
      t.integer :grade_level, default: nil
      t.references :team, default: nil
      t.string :shirt_size, default: nil

      t.string :type

      t.timestamps
    end
  end
end
