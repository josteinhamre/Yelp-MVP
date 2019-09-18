class ReviewsController < ApplicationController
  before_action :find_resto_id, only: [:new, :create]
  before_action :find_review_id, only: [:show,]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(strong_params_review)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def strong_params_review
    params.require(:review).permit(:content, :rating)
  end

  def find_resto_id
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
