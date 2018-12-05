class Artwork < ApplicationRecord
  validates_presence_of :title, :image_url
  validates :title, uniqueness: { scope: :artist_id }

  has_many :artwork_shares
  has_many :shared_viewers, through: :artwork_shares, source: :viewer
  belongs_to :artist, foreign_key: :artist_id, class_name: 'User'

  def self.artworks_by_user_id(user_id)
    Artwork
      .left_outer_joins(:artwork_shares)
      .where('(artworks.artist_id = :user_id) OR (artwork_shares.viewer_id = :user_id)', user_id: user_id)
      .distinct
  end
end
