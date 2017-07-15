class AddBranchToStudent < ActiveRecord::Migration
  def change
    add_column :students, :branch, :string, null: false, default: ""
  
  end
end
