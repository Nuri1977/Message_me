class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:succes] = "Welcome to messanger #{@user.username}"
      redirect_to root_path
    else
      flash[:danger] = "Please try to register again"
      render "new"
    end  
  end

  private

  def user_params
    params.require(:user).permit(:username,:password)   
  end

end


