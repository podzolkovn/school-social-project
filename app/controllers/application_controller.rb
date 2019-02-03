class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    added_attrs = %i[name second_name birthday_day school grade]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def access_denied(exception)
    flash[:danger] = exception.message
    redirect_to root_url
  end
end
