class AddRoleToUsers < ActiveRecord::Migration
  def up
    add_column :users, :role, :integer, after: :email, default: 0
    add_column :questions, :category_id, :integer, after: :user_id
  end

  def down
    remove_column :users, :role
    remove_column :questions, :category_id
  end
end
