class RemoveUsersIdFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :posts, :users, null: false, default: 1, foreign_key: true
  end
end
