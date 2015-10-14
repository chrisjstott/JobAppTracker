class PositionsController < ApplicationController
  before_action :require_logged_in, except: [:index]
  
  def index
    @positions = Position.all
    render :index
  end
  
  def new
    @position = Position.new
    render :new
  end
  
  def create
    @position = Position.new(position_params)
    
    if @position.save
      redirect_to positions_url
    else
      flash.now[:errors] = @position.errors.full_messages
      render :new
    end
  end
  
  def show
  end
  
  def edit
    @position = Position.find(params[:id])
    render :edit
  end
  
  def update
    @position = Position.find(params[:id])
    if @position.update(position_params)
      redirect_to positions_url
    end
  end
  
  def destroy
    Position.find(params[:id]).destroy
  end
  
private

  def position_params
    params.require(:position).permit(:title, :description)
  end

end
