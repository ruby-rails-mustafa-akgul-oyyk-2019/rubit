class AddPostsCountToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :posts_count, :integer
  end
end
