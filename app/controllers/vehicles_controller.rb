class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  def show
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
