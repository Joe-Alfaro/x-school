class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :content, null: false
      t.references :noteable, null: false, polymorphic: true
      t.references :sender, null: false

      t.timestamps
    end
  end
end
