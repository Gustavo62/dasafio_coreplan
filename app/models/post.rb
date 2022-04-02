class Post < ApplicationRecord
    has_many :like_posts, dependent: :destroy
    has_one  :user
end
