class AddUsernameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :username, :text
    belongs_to :topic, foreign_key: true
  end
end
