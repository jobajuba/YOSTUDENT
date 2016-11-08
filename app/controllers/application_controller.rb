class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #call the configured parameters
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  # Protect the database, while allowing these fields to be updated.
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :username, :email, :password, :remember_me]) 
    devise_parameter_sanitizer.permit(:account_update, keys:[:email, :password, :password_confirmation, :current_password])
  end
  
  # This is the method that defines the application behavior when a request is found to be unverified.
  # By default, \Rails resets the session when it finds an unverified request.
  #def handle_unverified_request
   # forgery_protection_strategy.new(self).handle_unverified_request
  #end
  
  
  
  #null_session

end
