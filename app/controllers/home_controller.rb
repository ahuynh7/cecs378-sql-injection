class HomeController < ApplicationController
  def index
    @user = User.new
    #@user_login = User.find_by
  end
end
