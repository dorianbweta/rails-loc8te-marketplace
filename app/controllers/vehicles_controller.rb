class VehiclesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_vehicle, only: %i[show edit update]
  def index
    @vehicles = Vehicle.all
    if params[:query].present?
      sql_subquery = <<~SQL
        vehicles.model @@ :query
        OR vehicles.category @@ :query
      SQL
      @vehicles = @vehicles.where(sql_subquery, query: params[:query])
    end
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.business_id = current_user.business.id
    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @vehicle.update(vehicle_params)
      redirect_to vehicle_path(@vehicle)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:model, :category, :driver_name, :base_price, photos: [])
  end
end
