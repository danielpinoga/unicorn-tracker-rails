class LocationsController < ApplicationController
  def index
    @locations = []
    Location.joins(:unicorns).each do |location|
      @locations.push location_json(location)
    end

    render json: @locations
  end

  def show
    begin
      @location = Location.joins(:unicorns).find(params[:id])
      render json: location_json(@location)
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Location not found' }, status: :conflict
    end
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

  private

  def location_json(location)
    {
      id: location.id,
      name: location.name,
      unicorns: location.unicorns
    }
  end

end
