class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

private

def user_params
  params.require(:user).permit(:username, :password, :password_confirmation, :bio)
end

end
