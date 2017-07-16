class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :exp_title
      t.string :string
      t.text :exp_content
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
