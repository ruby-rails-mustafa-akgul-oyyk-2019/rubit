class User < ApplicationRecord
  has_one :profile, dependent: :destroy

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :likes_for_published_posts, through: :posts, source: :likes
  has_many :comments_for_published_posts, through: :posts, source: :comments

  def user_name
    full_name
  end
end
