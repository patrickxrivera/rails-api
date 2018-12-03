class ArtworkSharesController < ApplicationController
  before_action :set_artwork_share, only: [:show, :update, :destroy]

  # GET /artwork_shares
  def index
    @artwork_shares = ArtworkShare.all

    render json: @artwork_shares
  end

  # GET /artwork_shares/1
  def show
    render json: @artwork_share
  end

  # POST /artwork_shares
  def create
    @artwork_share = ArtworkShare.new(artwork_share_params)

    if @artwork_share.save
      render json: @artwork_share, status: :created, location: @artwork_share
    else
      render json: @artwork_share.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artwork_shares/1
  def update
    if @artwork_share.update(artwork_share_params)
      render json: @artwork_share
    else
      render json: @artwork_share.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artwork_shares/1
  def destroy
    @artwork_share.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork_share
      @artwork_share = ArtworkShare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def artwork_share_params
      params.fetch(:artwork_share, {})
    end
end
