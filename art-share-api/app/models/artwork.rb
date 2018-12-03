class Artwork < ApplicationRecord
  validates_presence_of :title, :image_url
  validates :title, uniqueness: { scope: :artist_id }

  has_many :artwork_shares
  has_many :shared_viewers, through: :artwork_shares, source: :viewer
  belongs_to :artist, foreign_key: :artist_id, class_name: 'User'
end
