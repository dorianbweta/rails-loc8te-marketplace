class VehiclesController < ApplicationController
  before_action :set_vehicle
  def show
    @vehicles = set_vehicle
  end

  private

  def set_vehicle
    Vehicle.find(params[:id])
  end
end
