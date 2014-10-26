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
      #flash.now[:error] = 'username/password combination incorrect'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Log out successful'
  end
end
