class AeroplanesController < ApplicationController
  before_action :fetch_aeroplane, only: [:show, :edit, :delete]

  def index
    render json: {aeroplanes: aeroplane.all} status: 200
  end

  def show 
    render json: {aeroplane: @aeroplane}, status:200
  end

  def create
    @aeroplane = aeroplane.new(aeroplane_params)
    if @aeroplane.save
      render json: {aeroplane: aeroplane}, status:200
    else
      render json: {aeroplane: @aeroplane.errors}, status:200
    end
  end

  def edit
  end

  def delete
    if @aeroplane.destroy
      render json: {message: 'Succesfully deleted'}, status: 200
    else
      render json: {message: 'Failed'}, status: 4000
    end
  end

  private
  
  def aeroplane
    @aeroplane || Aeroplane
  end

  def aeroplane_params
    params.require(:name, :aeroplane_type, :seat_configurations: [:id, :name, :email])
  end

  def fetch_aeroplane
    @aeroplane = Aeroplane.find_by_id(params[:id])
    render json: {message: 'Aeroplane not found'}, status: 404
  end
end
