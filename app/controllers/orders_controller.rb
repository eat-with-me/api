class OrdersController < ApplicationController
  def index
    render :json => Group.find(offer_index_param).orders.to_json(
      include: :restaurant
    )
  end

  def offer_index_param
    params.permit(:group_id)["group_id"]
  end
end
