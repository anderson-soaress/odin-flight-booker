class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{|airport| [airport.code, airport.id]}
  end
end