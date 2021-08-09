class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all
    render json: favorites
  end

  def create
    favorite = Favorite.find_or_initialize_by(
      user_id: current_user.id,
      category: params[:category],
      description: params[:description],
    )
    if favorite.save
      render json: favorite.as_json
    else
      render json: { errors: favorite.errors.full_messages }, status: 422
    end
  end
end
