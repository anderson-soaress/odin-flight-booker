class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
