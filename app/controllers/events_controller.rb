class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :create]
  def index
    @events = Event.all
    @user = current_user
  end

  def new
    @event = Event.new
    @user = current_user
  end

  def show 
    @event = Event.find(params[:id])
    @end_date = end_date(@event.start_date, @event.duration)
  end
  def create
    @user = current_user
    
    @event = Event.new(title: params[:title],duration: params[:duration], location: params[:location], description: params[:description], start_date: params[:start_date],price: params[:duration],admin_id: params[:admin_id])

      if @event.save
        redirect_to root_path
      else
        
      end
  end
  private 
  def end_date(start_date, duration)
	  end_date = start_date + duration
	end 
  # def event_params
    
  #   params.require(:event).permit(:title, :duration, :location, :description, :start_date, :price, :admin_id)
  # end

end
