class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?
  helper_method :current_user
  
  def logged_in?
    session[:user_id]
  end
  
  def current_user
    @user = User.find(session[:user_id])
  end
  
end
