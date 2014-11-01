class UsersController < ApplicationController
  def create
    @user = User.create(user_params)

    if @user.save
      login @user
      flash[:success] = 'Thanks for registering'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end