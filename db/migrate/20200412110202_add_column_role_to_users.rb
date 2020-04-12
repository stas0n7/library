class AddColumnRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :integer, default: 0
    add_index :users, :role
  end
end
