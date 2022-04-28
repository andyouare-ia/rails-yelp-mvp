class RestaurantsController < ApplicationController

  # GET "restaurants"
  def index
    @restaurants = Restaurant.all
  end

  # GET "restaurants/38"
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # GET "restaurants/new"
  def new
    @restaurant = Restaurant.new
  end

  # POST "restaurants"
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
