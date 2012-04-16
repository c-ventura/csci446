class ApplicationController < ActionController::Base
  
  helper :all #always include all helpers
  protect_from_forgery
  #filter_parameter_logging :password
  #include Authentication
  helper_method :current_user_session, :current_user
  #before_filter { |c| Authorization.current_user = c.current_user }
  private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
	@current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
	@current_user = current_user_session && current_user_session.record
  end
  
  def require_user
    unless current_user
	  flash[:notice] = "You have to log in to access that."
	  redirect_to root_url
	  return false
	end
  end
  
  def require_no_user
    if current_user
	  flash[:notice] = "You must be logged out to access #{request.path}."
	  redirect_to admin_root_url
	  return false
	end
  end
  
end
