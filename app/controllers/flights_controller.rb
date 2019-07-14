class FlightsController < ApplicationController
  before_action :find_flight, only: [:show, :edit, :delete]

  def index
    @airports = Airport.all.map do |a| 
			[a.name, a.id]
    end
    @passenger_options = [1,2,3,4]
		@departure_airport = params[:departure_airport_id]
		@destination_airport = params[:destination_airport_id]
		@depart_date = params[:departure_date]
		@passengers = params[:passengers]
    @dates = (1.month.ago.to_date..Date.today).map {|n| n.strftime("%d/%m/%Y") }.uniq
    @departure_airport = params[:departure_airport_id]
		@destination_airport = params[:destination_airport_id]
    @flights= flight.all
  end

  def show
    render json: {flight: flight}, status: 200
  end

  def create
    @flight = flight.new(flight_params)
    if @flight.save
      render json: {flight: flight} , status: 200
    else
      render json: {errors: flight.errors} , status: 400
    end
  end

  def edit
    if flight.update(flight_params)
      render json: {flight: flight} , status: 200
    else
      render json: {errors: flight.errors} , status: 400
    end
  end

  def delete
    if flight.destroy
      render json: {flight: flight} , status: 200
    else
      render json: {errors: flight.errors} , status: 400
    end
  end

  private

  def flight
    @flight || Flight
  end

  def find_flight
    @flight = flight.find_by_id(params[:id])
    render json: {message: 'Flight not found'}, status: 404   if @flight.blank?
  end

  def flight_params
    params.require(:aero_plane_id, :destination_id, :origin_id)
  end
end
