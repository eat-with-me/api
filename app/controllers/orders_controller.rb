class OrdersController < ApplicationController
  def index
    render :json => Group.find(offer_group_param).orders.to_json(
      include: :restaurant
    )
  end

  def create
    order = Group.find(offer_group_param)
      .orders
      .create(offer_create_param)
    render :json => order
  end

  def offer_group_param
    params.permit(:group_id)["group_id"]
  end

  def offer_create_param
    params.permit(:restaurant_id, :closing_time)
  end
end
