class Comment < ApplicationRecord
  belongs_to :commenter,
             class_name: 'User', foreign_key: 'user_id',
             counter_cache: true
  belongs_to :post
end
