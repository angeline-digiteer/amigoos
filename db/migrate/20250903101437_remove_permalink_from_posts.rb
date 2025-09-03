class RemovePermalinkFromPosts < ActiveRecord::Migration[8.0]
  def change
    remove_column :posts, :permalink, :string
  end
end
