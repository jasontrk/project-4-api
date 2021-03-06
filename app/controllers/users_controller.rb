class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  # skip_before_action :authenticate_user!

  # GET /users
  def index
    @users = User.all

    render json: @users, include: ['liked_media', 'medium_created', 'disliked_media', 'saved_media']
  end

  # GET /users/1
  def show
    render json: @user, include: ['liked_media.likes', 'disliked_media.dislikes']
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :email, :firstname, :lastname, liked_media_ids:[], disliked_media_ids:[], saved_media_ids:[])
    end
end
