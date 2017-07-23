class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :student, index: true, foreign_key: true
      t.references :blog, index: true, foreign_key: true
      t.text :comment_content

      t.timestamps null: false
    end
  end
end
