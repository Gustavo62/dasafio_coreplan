class LikeComent < ApplicationRecord
  belongs_to :user
  belongs_to :coment
end
