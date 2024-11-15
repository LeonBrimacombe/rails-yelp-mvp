class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @ratings = Review.all.map { |review| review.rating }
    @average_ratings = @ratings.sum/@ratings.count
    @restaurant_ratings = Review.group(:restaurant_id).sum(:rating)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant: @restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
