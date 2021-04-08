class FavouritesController < ApplicationController
  def index
    @favourites = current_user.favourite_bicycles
    json_response(@favourites)
  end
end
