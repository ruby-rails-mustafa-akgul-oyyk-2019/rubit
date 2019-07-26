class Like < ApplicationRecord
  belongs_to :liker,
             class_name: 'User', foreign_key: 'user_id',
             counter_cache: true
  belongs_to :post
end
