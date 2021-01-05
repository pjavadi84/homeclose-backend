class DestinationsController < ApplicationController
  # before_action :set_destination, only: [:show, :edit, :update, :destroy]

  def index
    destinations = Destination.all
    render json: {destinations: destinations}, status: 200
  end

  # GET /destinations/new
  def new
    user = User.find(params[:id])
    if user
      destination = Destination.new
      render json: DestinationSerializer.new(destinations)
    else
      render json: destination.errors, status: :unprocessable_entity
    end
   
  end

  
  def create
    user = User.find(params[:user_id])

    if user
      destination = user.destinations.create(destination_params)
      render json: user, status: 200
    else
      render json: destination.errors, status: :unprocessable_entity
    end
  end

  def show
    destination = Destination.find_by(id: params[:id])
    options = { include: [:user]}

    if destination
      render json: DestinationSerializer.new(destination, options)
    else
      render json: {message: "No destination found!"}
    end
  end

  def update
    user = User.find_by_id(params[:user_id])
    if user && !user.nil?
      destination = user.destinations.find_by_id(params[:id])
      destination.update(destination_params)
      render json: destination, status: 200
    else
      render json: destinations, status: 200
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    destination = Destination.find_by_id(params[:id])
    destination.destroy
  end

  private
    def destination_params
      params.require(:destination).permit(:name, :zipcode, :price, :available, :description, :capacity)
    end
    
end
