class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{|airport| [airport.code, airport.id]}
    @booking = Booking.new

    if params[:departure].present? && params[:arrival].present?
      @flights = Flight.where(departure_id: params[:departure], arrival_id: params[:arrival]).for_date(params[:date])
    else
      @flights = nil
    end
  end
end
