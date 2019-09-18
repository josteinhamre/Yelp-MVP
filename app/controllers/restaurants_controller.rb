class RestaurantsController < ApplicationController
  before_action :find_by_id, only: [:show, :edit, :destroy, :update]

  def new
    @restaurant = Restaurant.new
  end

  def create
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_by_id
    @restaurant = Restaurant.find(params[:id])
  end
end
