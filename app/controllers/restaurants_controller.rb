class RestaurantsController < ApplicationController
  before_action :authenticate_user!

  def restaurant_param
    params.permit(:id)["id"]
  end

  def_param_group :index do
    api :GET, "/restaurants", "Wszystkie Restauracje"
    description "== Wszystkie Restauracje"
  end

  def_param_group :show do
    api :GET, "/restaurants/restaurant_id", "Szczegóły zamówienia"
    param :restaurant_id,
          Integer,
          :desc => "ID restauracji\n\n\n",
          :required => true
    description "==Szczegóły restauracji"
  end

  # ==============================================================================


  param_group :index
  def index
    render :json => Restaurant.all.to_json(
      include: :meals
    )
  end

  param_group :show
  def show
    render :json => Restaurant.find(restaurant_param).to_json(
      include: :meals
    )
  end
end
