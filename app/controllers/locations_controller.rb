class LocationsController < ApplicationController
  def index
    @locations = []
    
    Location.joins(:unicorns).each do |location|
      @locations.push({
        name: location.name,
        unicorns: location.unicorns
      })
    end

    render json: @locations
  end
  
  def show    
    @location = Location.joins(:unicorns).find(params[:id])
    render json: {
      name: @location.name,
      unicorns: @location.unicorns
    }
  end

  def create
  end

  def update
  end

  def destroy
  end
end
