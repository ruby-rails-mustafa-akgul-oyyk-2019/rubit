class Post < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_many :comments
  has_many :likes

  #delegate :user_name, :email, to: :user

  # post.user_user_name
  # post.user_email
  # post.user.try(:full_name)

  scope :latest_posts, -> {order(created_at: :desc)}

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
