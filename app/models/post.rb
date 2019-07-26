class Post < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_many :comments
  has_many :likes

  scope :latest_posts, -> {order(created_at: :desc)}
end
