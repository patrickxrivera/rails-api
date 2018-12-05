require 'pry'

class ArtworksController < ApplicationController
    attr_accessor :artwork
    
    before_action :set_artwork, only: [:show, :update, :destroy]

    def index
        artworks_by_user_id = Artwork.artworks_by_user_id(params[:user_id])
        json_response(artworks_by_user_id)
    end

    def show
        json_response(artwork)
    end

    def create
        artwork = Artwork.create!(artwork_params)
        response = { message: Message.account_created }
        json_response(response, :created)
    end

    def destroy
        artwork.destroy!
        response = { message: Message.deleted('Artwork') }
        json_response(response)
    end

    def update
        artwork.update!(artwork_params)
        json_response(artwork)
    end

    private

    def set_artwork
        @artwork = Artwork.find(params[:id])
    end

    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id, :user_id)
    end
end
