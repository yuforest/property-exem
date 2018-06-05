class NearestStationsController < ApplicationController
  before_action :set_nearest_station, only: %i[show edit update destroy]

  def index
    @nearest_stations = NearestStation.all
  end

  def show
  end

  def new
    @nearest_station = NearestStation.new
  end

  def edit
  end

  def create
    @nearest_station = NearestStation.new(nearest_station_params)

    if @nearest_station.save
      redirect_to @nearest_station, notice: 'Nearest station was successfully created.'
    else
      render :new
    end
  end

  def update
    if @nearest_station.update(nearest_station_params)
      redirect_to @nearest_station, notice: 'Nearest station was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @nearest_station.destroy
    redirect_to nearest_stations_url, notice: 'Nearest station was successfully destroyed.'
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nearest_station
      @nearest_station = NearestStation.find(params[:id])
    end

    def nearest_station_params
      params.require(:nearest_station).permit(:line_name, :station_name, :walk_minute)
    end
end
