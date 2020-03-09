class RestaurantsController < ApplicationController
  # THIS IS THE FAKE DB
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    #@restaurants = RESTAURANTS
    @restaurants = RESTAURANTS.select do |id, restaurant|
      restaurant[:category] == params[:food_type]
    end
  end

  def create
    # WE CANNOT SAVE WITHOUT A DB, WE WILL DO IT TOMORROW
    # WE HAVE HERE ACCESS TO THE HASH OF PARAMS WITH NAME AND ADDRESS

    # @restaurant = Restaurant.new(name: params[:name], address: params[:address])
    # @restaurant.save
  end

  def show
    # WE HAVE HERE ACCESS TO PARAMS[:ID], THIS IS COMING FROM THE PARAMETRIC URL
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
