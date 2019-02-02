class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def access_denied(exception)
  	flash[:danger] = exception.message
  	redirect_to root_url
	end

  devise_parameter_sanitizer.permit(:account_update, keys: [:name , :secondname, :birthday_day , :school , :grade])

end
