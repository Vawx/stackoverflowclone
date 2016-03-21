class SessionsController < ApplicationController
  define_method :new do
  end

  define_method :create do
    user = User.find_by_email( params[:email] )
    if user && user.authenticate( params[:password] )
      session[:user_id] = user.id
      redirect_to root_url, notice: "Welcome back!"
    else
      flash.now.alert = "Email or password are incorrect"
      render :new
    end
  end

  define_method :destroy do
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out."
  end
end
