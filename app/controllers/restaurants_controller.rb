class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # new & create are together
  def new
    @restaurant = Restaurant.new
  end

  def create
    # byebug
    restaurants_params = params.require(:restaurant).permit(:name, :street_address, :city, :state, :postal_code)
    Restaurant.create(restaurants_params)

    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    restaurants_params = params.require(:restaurant).permit(:name, :street_address, :city, :state, :postal_code)
    @restaurant.update(restaurants_params)
    # byebug

    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy

    # response
    redirect_to restaurants_path
  end


end



