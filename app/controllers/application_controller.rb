class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :verify

  def verify
    if !session[:user_id]
      redirect_to root_path
    end
  end

end
