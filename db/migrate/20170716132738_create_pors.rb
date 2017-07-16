class CreatePors < ActiveRecord::Migration
  def change
    create_table :pors do |t|
      t.string :por_title
      t.text :por_content
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
