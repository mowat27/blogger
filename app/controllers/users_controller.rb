class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to articles_path, :notice => "User '#{@user.email}' created"
    else
      render :new
    end
  end
end
