class AddEnrollmentNoToStudent < ActiveRecord::Migration
  def change
    add_column :students, :enrollment_no, :string, null: false, default: ""
  
  end
end
