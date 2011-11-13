class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?
  helper_method :current_user
  helper_method :require_seller
  
  def logged_in?
    session[:user_id]
  end
  
  def current_user
    @user = User.find(session[:user_id])
  end
  
  def require_seller
    user = User.find_by_id(session[:user_id])
    redirect_to user_url(current_user), :notice => "You must be a seller to list an item. Please update your settings in your Edit Account page." unless user.seller
  end
end
