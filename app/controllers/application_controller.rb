class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  define_method :current_user do
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  define_method :authorize do
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
end
