class FavouritesController < ApplicationController
  def index
    @favourites = current_user.favourite_bicycles
    json_response(@favourites)
  end

  def already_favourite?
    Favourite.where(user_id: current_user.id, bicycle_id:
    params[:bicycle_id]).exists?
  end

  def create
    if !already_favourite?
      @favourite = current_user.favourites.create!(favourite_params)
      json_response(@favourite, :created)
    else
      json_response('Already favourite')
    end
  end

  def delete
    if already_favourite?
      @favourite = current_user.favourites.find_by(favourite_params)
      @favourite.destroy
      json_response('Deleted')
    else
      json_response('The user did not add to favourite')
    end
  end

  private

  def favourite_params
    params.permit(:bicycle_id)
  end
end
