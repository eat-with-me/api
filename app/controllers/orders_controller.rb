class OrdersController < ApplicationController
  resource_description do
    short 'Zamówienia'
  end

  def offer_group_param
    params.permit(:group_id)["group_id"]
  end

  def offer_create_param
    params.permit(:restaurant_id, :closing_time)
  end

  def purchasers_create_param
    params.permit(order: [:id, meals: []])
  end

  def_param_group :create do
    api :POST, "/groups/:group_id/orders", "Dodawanie nowego zamówienia"
    param :restaurant_id,
          Integer,
          :desc => "ID restauracji\n\n\n",
          :required => true

    param :closing_time,
          String,
          :desc => "czas, np. 13:00",
          :required => true
    param :group_id,
          Integer,
          :desc => "id grupy do ktorej bedzie przypisywany order, definiuje się w urlu",
          :required => true
    description "==Tworzy nowe zamówienie"
  end

  def_param_group :index do
    api :GET, "/groups/:group_id/orders", "Wszystkie zamówienia"
    description "== Wszystkie zamówienia"
  end

  ###############################################################

  param_group :index
  def index
    render :json => Group.find(offer_group_param).orders.to_json(
      include: :restaurant
    )
  end

  param_group :create
  def create
    order = Group.find(offer_group_param)
      .orders
      .create(offer_create_param)
    render :json => order
  end

  def show
    render :json => Group.find(offer_group_param)
      .orders
      .to_json(
        include: {
          restaurant: {},
          purchasers: {}
        }
      )
  end

  def purchasers_create
    group = Group.find(offer_group_param)
    purchasers = purchasers_create_param
    order = group.orders.where(id: purchasers[:order][:id])[0]

    render(json: 0) && return if order.nil?

    meals = Meal.where(id: purchasers[:order][:meals])

    purchaser = order.purchasers.where(user_id: current_user.id)[0]
    purchaser = order.purchasers.create(user: current_user) if purchaser.nil?

    purchaser.meals_lists.clear

    purchaser.meals << meals
    purchaser.save

    render :json => purchaser.meals
  end

end
