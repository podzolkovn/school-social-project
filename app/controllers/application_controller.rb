class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


	def access_denied(exception)
	  flash[:danger] = exception.message
  	  redirect_to root_url
	end
end
