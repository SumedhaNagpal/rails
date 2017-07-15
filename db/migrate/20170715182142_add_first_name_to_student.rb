class AddFirstNameToStudent < ActiveRecord::Migration
  def change
    add_column :students, :first_name, :string, null: false, default: ""
  end
end
