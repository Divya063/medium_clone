class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    def current_user?(user)
        current_user.id == user.id
    end
    # so that it can be used in post view
    helper_method :current_user?



    protected
    
    # Support for extra parameter that is username
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
      end





end
