class UserSessionsController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to articles_path
    else
      flash.now[:notice] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to articles_path, :notice => "Come back soon!"
  end
end
