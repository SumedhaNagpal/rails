class AddLastNameToStudent < ActiveRecord::Migration
  def change
    add_column :students, :last_name, :string, null: false, default: ""
  end
end
