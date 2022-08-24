class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(content: review_params[:content],
                            rating: review_params[:rating],
                            restaurant_id: params[:restaurant_id])
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
