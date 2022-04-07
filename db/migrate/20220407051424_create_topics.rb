class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.text :topic_name
      t.integer :category_id
      t.text :topic_owner

      t.timestamps
    end
  end
end
