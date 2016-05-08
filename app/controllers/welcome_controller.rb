class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    render layout: 'welcome' && return if !user_signed_in?
    redirect_to home_path
  end

end
