class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.all
    json_response(@bicycles)
  end

  def create
    @bicycle = Bicycle.create(bicycles_params)
    json_response(@bicycle, :created)
  end

  private

  def bicycles_params
    params.permit(:model, :description, :url)
  end
end
