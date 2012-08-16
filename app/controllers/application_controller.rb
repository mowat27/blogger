class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :bump_hit_count, :except => [:create, :update, :destroy]

  private

  def bump_hit_count
    session[:hit_count] ||= 0
    session[:hit_count] += 1
  end 
end
