class CreateDetentions < ActiveRecord::Migration[5.1]
  def change
    create_table :detentions do |t|
      t.references :issuer, null: false
      t.references :student, null: false
      t.text :reason
      t.date :date

      t.timestamps
    end
  end
end
