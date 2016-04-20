class GroupsController < ApplicationController
  before_action :authenticate_user!

  resource_description do
    short 'Grupy'
  end

  def_param_group :index do
    api :GET, "/groups", "Wszystkie grupy"
    description "== Wszystkie grupy"
  end

  param_group :index
  def index
    render :json => Group.all
  end
end
