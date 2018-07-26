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
    render status: :not_implemented
  end

  def update
    render status: :not_implemented
  end

  def destroy    
    render status: :not_implemented
  end
end
