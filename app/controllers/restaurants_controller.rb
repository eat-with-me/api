class RestaurantsController < ApplicationController
  def index
    render :json => Restaurant.all.to_json(
      include: :meals
    )
  end

  def one
    render :json => Restaurant.find(restaurant_param).to_json(
      include: :meals
    )
  end
  def restaurant_param
    params.permit(:restaurant_id)["restaurant_id"]
  end
end
