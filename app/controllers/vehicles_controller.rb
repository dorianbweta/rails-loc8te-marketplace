class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  def index
    @vehicles = Vehicle.all
  end
  
  def show
  end

  private

  def set_vehicle
    Vehicle.find(params[:id])
  end 
end
