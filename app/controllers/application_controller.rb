class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end


  def home
    if logged_in?
      redirect_to current_user
    elsif venue_logged_in?
      redirect_to current_venue
    else
      render 'static_pages/home'
    end
  
  include SessionsHelper
end
