class JobAppsController < ApplicationController
  before_action :require_logged_in, except: [:new, :create]
  
  def index
    @job_apps = JobApp.all
    render :index
  end
  
  def new
    @job_app = JobApp.new
    render :new
  end
  
  def create
    @job_app = JobApp.new(job_app_params_user)
    
    if @job_app.save
      redirect_to positions_url
    else
      flash.now[:errors] = @job_app.errors.full_messages
      render :new
    end
  end
  
  def show
    @job_app = JobApp.find(params[:id])
    render :show
  end
  
  def edit
  end
  
  def update
    @job_app = JobApp.find(params[:id])
    
    if @job_app.update(job_app_params_admin)
      redirect_to job_apps_url
    end
  end
  
  def destroy
    JobApp.find(params[:id]).destroy
  end
  
private
  def job_app_params_user
    params.require(:job_app).permit(:name, :data)
  end
  
  def job_app_params_admin
    params.require(:job_app).permit(:status, :notes)
  end
end
