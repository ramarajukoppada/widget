class ApplicationController < ActionController::Base
  layout :false
  include FullHelper
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
    def configure_permitted_parameters 
      devise_parameter_sanitizer.permit(:sign_up){|u|u.permit(:email, :password, :password_confirmation,:is_admin)}  
    end 
    def after_sign_out_path_for(resource_or_scope)
      new_user_session_path
    end
end
