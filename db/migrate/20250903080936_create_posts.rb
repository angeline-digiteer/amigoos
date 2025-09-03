class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.date :publish_date
      t.boolean :active
      t.string :permalink

      t.timestamps
    end
  end
end
