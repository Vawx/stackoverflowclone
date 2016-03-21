class UsersController < ApplicationController
  define_method :new do
    @user = User.new
  end

  define_method :create do
    @user = User.new( params[:user] )
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thanks for signing up!"
    else
      render :new
    end
  end
end
