class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    # The `geocoded` scope filters only busineses with coordinates
    @markers = @businesses.geocoded.map do |business|
      {
        lat: business.latitude,
        lng: business.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {business: business})
      }
    end
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.user_id = current_user.id
    if @business.save
      redirect_to business_path(@business)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @business = Business.find(params[:id])
  end

  private

  def business_params
    params.require(:business).permit(:organisation_name, :tax_number, :address)
  end
end
