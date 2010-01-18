# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include AuthenticatedSystem
  
  helper_method :admin?
  
  protected
  
  def authorize
    unless admin?
      flash[:error] = "unauthorized access"
      redirect_to posts_path
      false
    end
  end
  
  def admin?
    if current_user != nil
       current_user[:login] == "admin"
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
