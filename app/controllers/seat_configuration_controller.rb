class SeatConfigurationController < ApplicationController
  def create
    seat_configuration = SeatConfiguration.new(seat_configuration_params)
    if seat_configuration.save
      render json: {seat_configuration: seat_configurations}, status: 200
    else
      render json: {message: 'Failed'}, status: 400
    end
  end
  private
  def seat_configuration_params
    params.require(:category, :rows, :columns, :aero_plane_id, :base_price)
  end

end
