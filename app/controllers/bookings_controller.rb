class BookingsController < ApplicationController
  # We need @vehicle in our `simple_form_for`
  before_action :set_vehicle, only: %i[new create]

  def index
    @bookings = Booking.where(user_id: current_user.id) # customer
    @requests = Booking.where(vehicle: current_user.vehicles) # business owner
  end

  def new
    # set_vehicle
    @booking = Booking.new
  end

  def create
    # set_vehicle
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.vehicle_id = @vehicle.id
    @booking.total_price = @vehicle.base_price * (@booking.end_date - @booking.start_date).to_i
    @booking.status = "Pending"
    @booking.save
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save
    redirect_to bookings_path
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
