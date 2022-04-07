class RemoveCategoryFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :category, :text
  end
end
