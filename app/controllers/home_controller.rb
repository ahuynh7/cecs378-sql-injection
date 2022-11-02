class HomeController < ApplicationController
  def index
    @user = User.new
    
  end

  def login
    @user_login = User.find_by(username: params[:username], password: params[:password])
    puts user_params
    respond_to do |format|
      if @user_login != nil
        format.html { redirect_to login_path, notice: "login successful" }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { redirect_to root_path, notice: "login failed" }
      end
    end
  end
end
