class Comment < ApplicationRecord
    belongs_to :commenter, foreign_key: :comment_id, class_name: :User
    belongs_to :artwork
end
