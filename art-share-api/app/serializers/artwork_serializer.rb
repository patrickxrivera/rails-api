class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :artist_id
end
