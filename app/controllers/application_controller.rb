class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      nil
    end
  end

  def user_logged_in?
    !current_user.nil?
  end

  helper_method :user_logged_in?
  helper_method :current_user
end
