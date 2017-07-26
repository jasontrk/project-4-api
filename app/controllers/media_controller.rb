class MediaController < ApplicationController
  before_action :set_medium, only: [:show, :update, :destroy]

  # GET /media
  def index
    @media = Medium.all

    render json: @media
  end

  # GET /media/1
  def show
    render json: @medium
  end

  def exisiting_medium
    Medium.find_by tmdb_id: params[:tmdb_id]
  end

  # POST /media
  def create

    if !exisiting_medium

      @medium = Medium.new(medium_params)
      @medium.creator = current_user

      if @medium.save
        render json: @medium, status: :created, location: @medium
      else
        render json: @medium.errors, status: :unprocessable_entity
      end

    else
      render json: exisiting_medium
    end

  end

  # PATCH/PUT /media/1
  def update
    if @medium.update(medium_params)
      render json: @medium
    else
      render json: @medium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /media/1
  def destroy
    @medium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medium
      @medium = Medium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medium_params
      params.permit(:tmdb_id, :name, :user_id, :overview, :poster_path, :first_air_date, :release_date, genre_ids:[], like_ids:[], dislike_ids:[], fave_ids:[] )
    end
end
