class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.all
    json.response(@bicycles)
  end

  def create
    @bicycle = Bicycle.create(bicycle_params)
    json.response(@bicycle, :created)
  end

  private

  def bicycles_params
    params.permit(:model, :description)
  end
end
