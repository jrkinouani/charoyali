class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

   before_action :configure_permitted_parameters, if: :devise_controller?
   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name,:phone, :email, :password, :password_confirmation])
<<<<<<< HEAD
    
=======

>>>>>>> 4bf2f5f71bd22355a056957f7f8fde40f1200f74
  end

end
