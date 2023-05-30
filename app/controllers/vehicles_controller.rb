class VehiclesController < ApplicationController
  def index
    @vehicles = vehicle.all
  end
end
