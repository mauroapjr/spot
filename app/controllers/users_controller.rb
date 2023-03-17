class UsersController < ApplicationController
  
  def new 
  end 

  def create 
    user = Users.new(users_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/about/index'
    else
      redirect_to '/signup'
    end
  end
  
  def user_params
    params.require(:user).permit(:name, :last_name, :email, :password, :password_confirmation)
  end
  
end
