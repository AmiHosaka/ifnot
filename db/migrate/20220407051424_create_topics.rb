class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.text :topic_name
      t.integer :category_id
      t.text :topic_owner
      
      t.belongs_to :category, foreign_key: true //外部キー制約
      t.timestamps
    end
  end
end
