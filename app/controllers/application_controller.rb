class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  devise_parameter_sanitizer.permit(:account_update, keys: [:name , :secondname, :birthday_day , :school , :grade])

end
