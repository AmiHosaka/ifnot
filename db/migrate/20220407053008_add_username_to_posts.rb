class AddUsernameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :username, :text
    add_belongs_to :topics, foreign_key: true
  end
end
