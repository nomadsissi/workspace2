class CreateTabNotes < ActiveRecord::Migration
  def change
    create_table :tab_notes do |t|
      t.integer :tab_id
      t.integer :note_id

      t.timestamps null: false
    end
  end
end
