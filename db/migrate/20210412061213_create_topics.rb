class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :image
      t.string :tag

      t.timestamps
    end
  end
end
