class SessionsController < ApplicationController

  def home
  end

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user || @user.validates(password: params[:password])
      session[:user_id] = @user.id
      redirect_to episodes_path
    else
      redirect_to root_path
    end
  end
  
end
