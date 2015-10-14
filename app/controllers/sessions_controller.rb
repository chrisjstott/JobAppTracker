class SessionsController < ApplicationController
  def new
    render :new
  end
  
  def create
    username = params[:user][:username]
    password = params[:user][:password]
    user = User.find_by_credentials(username, password)
    
    if user.nil?
      flash.now[:errors] = ["Wrong username/password"]
      render :new
    else
      login!(user)
      redirect_to job_apps_url
    end
  end

  def destroy
    logout!
    redirect_to positions_url
  end
end
