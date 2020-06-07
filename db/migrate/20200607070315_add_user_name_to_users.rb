class AddUserNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_name, :string
    add_index :userd, :user_name, unique: true
  end
end
