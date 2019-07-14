class AirportsController < ApplicationController
  before_action :find_airport, only: [:show, :edit, :delete]

  def index
    render json: {airports: airport.all}, status: 200
  end

  def show
    render json: {airport: airport}, status: 200
  end

  def create
    @airport = airport.new(airport_params)
    if @airport.save
      render json: {airport: airport} , status: 200
    else
      render json: {errors: airport.errors} , status: 400
    end
  end

  def edit
    if airport.update(airport_params)
      render json: {airport: airport} , status: 200
    else
      render json: {errors: airport.errors} , status: 400
    end
  end

  def delete
    if airport.destroy
      render json: {airport: airport} , status: 200
    else
      render json: {errors: airport.errors} , status: 400
    end
  end

  private

  def airport
    @airport || airport
  end

  def find_airport
    @airport = airport.find_by_id(params[:id])
    render json: {message: 'Airport not found'}, status: 404   if @airport.blank?
  end

  def airport_params
    params.require(:city, :country, :name)
  end
end
