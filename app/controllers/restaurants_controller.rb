class RestaurantsController < ApplicationController
  before_action :find_by_id, only: [:show, :edit, :destroy, :update]

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(strong_params_restaurant)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def edit
  end

  def update
    if @restaurant.update(strong_params_restaurant)
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def strong_params_restaurant
    params.require(:restaurant).permit(:name, :category, :address, :phone_number)
  end

  def find_by_id
    @restaurant = Restaurant.find(params[:id])
  end
end
