class SessionController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def new
  end

  def create
  	user = User.find_by name: params[:session][:name].downcase
    if user && user.authenticate(params[:session][:password])
      #TODO save user infor into session
      flash[:success] = "Login success"
      #redirect_to 'http://localhost:3000/home'
      log_in user
      redirect_to user
    else
      flash[:danger] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
    log_out
    flash[:success] = "Ban da dang xuat"
    redirect_to login_path
  end
  
end
