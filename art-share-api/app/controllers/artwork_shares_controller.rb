class ArtworkSharesController < ApplicationController
  attr_accessor :artwork_share

  before_action :set_artwork_share, only: [:destroy]

  ARTWORK_SHARED_MESSAGE = 'Artwork shared!'
  ARTWORK_UNSHARED_MESSAGE = 'Artwork unshared.'

  def create
    artwork_share = ArtworkShare.create!(artwork_share_params)
    json_response(artwork_share, :created)
  end

  def destroy
    artwork_share.destroy!
    json_response(artwork_share)
  end

  private

  def set_artwork_share
    @artwork_share = ArtworkShare.find(params[:id])
  end
  
  def artwork_share_params
    params.require(:artwork_share).permit(:artwork_id, :viewer_id)
  end
end
