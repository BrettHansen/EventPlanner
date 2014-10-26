class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:session][:username])
    flash.now[:error] = params[:session][:password]
    if user && user.authenticate(params[:session][:password])
      login user
      flash[:success] = 'You are now logged in'
      redirect_to root_url
    else
      flash[:error] = 'username/password combination incorrect'
      redirect_to register_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to register_path, notice: 'Log out successful'
  end
end
