class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      
      flash[:success] = "User logged in successfully"
      #redirect_to
    else
      flash.now[:danger] = "Please verify your login credentials"
      render :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = "User has successfully logged out"
    redirect_to root_path
  end
end
