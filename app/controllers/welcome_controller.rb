class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  layout :layout_by_resource

  def index
    redirect_to home_path if user_signed_in?
    render layout: 'welcome'
  end

end
