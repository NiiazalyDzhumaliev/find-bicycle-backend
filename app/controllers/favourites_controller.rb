class FavouritesController < ApplicationController
  def index
    @favourites = current_user.favourite_bicycles
    json_response(@favourites)
  end

  def create
    @favourite = current_user.favourites.create!(favourite_params)
    json_response(@favourite, :created)
  end

  private

  def favourite_params
    params.permit(:bicycle_id)
  end
end
