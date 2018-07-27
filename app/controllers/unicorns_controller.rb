class UnicornsController < ApplicationController
  def index
    @unicorns = []
    
    Unicorn.joins(:location).each do |unicorn|
      @unicorns.push({
        name: unicorn.name,
        description: unicorn.color,
        location: unicorn.location
      })
    end

    render json: @unicorns
  end
  
  def show
    @unicorn = Unicorn.joins(:location).find(params[:id])
    render json: {
      name: @unicorn.name,
      color: @unicorn.color,
      location: @unicorn.location
    }
  end

  def create
    @location = Location.find(params[:location_id])
    @unicorn = @location.unicorns.create(unicorn_params)
    @location.save

    render json: @unicorn
  end

  def update
    @unicorn = Unicorn.find(params[:id])
    @unicorn.update(unicorn_params)
    @unicorn.save

    render json: @unicorn
  end

  def destroy
    @unicorn = Unicorn.find(params[:id])
    @unicorn.destroy

    render status: :ok
  end

  def changeLocation
    @unicorn = Unicorn.find(params[:id])
    @unicorn.update({location_id: params[:location_id]})

    render json: {
      name: @unicorn.name,
      color: @unicorn.color,
      location: @unicorn.location
    }
  end

  private

  def unicorn_params
    params.require(:unicorn).permit(:name, :color)
  end
end
