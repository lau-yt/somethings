class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    helper_method :countpoint

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

 def countpoint 
    if user_signed_in?
      c = 1
      Point.all.each do |p|
        if current_user.id == p.user_id
          c += p.puntos
        end
      end
      #caso de que el puntaje negativo automaticamente es 0 
      if c < 0 
        c=0
      end
    else 
      c=0
    end
    return c
  end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :apellido, :university_id, :email, :password])
   			devise_parameter_sanitizer.permit(:account_update, keys: [:nombre, :apellido, :university_id, :email, :password, :current_password])
        end
end


