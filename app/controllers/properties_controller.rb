class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]

  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
    2.times {@property.nearest_stations.build}
  end

  def edit
  end

  def create
    @property = Property.new(property_params)
    
    
    if @property.save
      redirect_to @property, notice: 'Property was successfully created.'
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render :edit
    end
    
  end
  
  def destroy
    @property.destroy
    format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:name, :rent, :address, :age, :remark, nearest_stations_attributes: [:line_name, :station_name, :walk_minute])
    end
end
