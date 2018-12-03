class ArtworkShare < ApplicationRecord
    validates :viewer, uniqueness: { scope: :artwork }

    belongs_to :viewer, class_name: 'User'
    belongs_to :artwork
end
