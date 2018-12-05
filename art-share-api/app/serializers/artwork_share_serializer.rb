class ArtworkShareSerializer < ActiveModel::Serializer
  attributes :id, :viewer_id, :artwork_id
end
