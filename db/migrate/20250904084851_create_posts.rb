class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string  :title, null: false
      t.text    :content, null: false
      t.string  :author, null: false
      t.date    :publish_date, null: false
      t.boolean :active, default: true, null: false
      t.boolean :featured, default: false, null: false

      t.timestamps
    end

    add_index :posts, :title, unique: true
  end
end