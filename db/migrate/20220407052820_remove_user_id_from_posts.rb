class RemoveUserIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :user_id, :int
  end
end
