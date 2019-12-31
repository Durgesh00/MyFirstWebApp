class LoginsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def new
  end
  def create
    @user=User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path(), notice: "Hii #{@user.first_name} #{@user.last_name}"
    else
      redirect_to new_login_path(), alert: "Wrong Credentials"
    end
  end
end
