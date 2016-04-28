class GroupsController < ApplicationController
  before_action :authenticate_user!

  resource_description do
    short 'Grupy'
  end

  def group_name_param
    params.permit(:name)
  end

  def group_token_param
    params.permit(:token)
  end

  def_param_group :index do
    api :GET, "/groups", "Wszystkie grupy do których należy użytkownik + wszyscy użytkownicy"
    description "== Wszystkie grupy + użytkownicy tych grup"
  end

  def_param_group :create do
    api :POST, "/groups", "Dodawanie grupy"
    param :name,
          String,
          :desc => "Nazwa grupy\n\n\n",
          :required => true
    description "== Dodawanie grupy"
  end

  def_param_group :add_user do
    api :GET, "/join/:token", "Dołączanie użytwnika. Użytkownik musi być zalogowany!"
    param :token,
          String,
          :desc => "token groupy\n\n\n",
          :required => true
    description "== Wszystkie grupy"
  end

  param_group :index
  def index
    render :json => current_user.groups.to_json(
        include: :users)
  end

  param_group :create
  def create
    group = Group.create(group_name_param)
    group.users << current_user
    render :json => group
  end

  param_group :add_user
  def add_user
    group = Group.where(group_token_param)
    user = group[0].users.where(id: current_user.id)
    @result = false
    if user.length == 0
      group[0].users << current_user
      @result = true
    end
  end

  def delete
    render :json => Group.all
  end
end
