class ApplicationController < ActionController::Base
    
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.

    #Este codigo equivale a los permisos que se requieren para poder guardar datos en la db
    
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :last_name, :date_of_birth, :address, :phone, :email, :password] )
            devise_parameter_sanitizer.permit(:account_update, keys:[:name,:last_name, :address, :phone, :email, :password, :current_password]) 
        end
end
