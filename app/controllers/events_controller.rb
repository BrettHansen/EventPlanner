class EventsController < ApplicationController

  before_action :authenticate_user!

  def index
    @events = available_events
  end

  def show
    @event = Event.find(params[:id])
    @my_events = my_events
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    @event.tickets_avail = @event.tickets_total

    if @event.save
      redirect_to events_path, :notice => "New Event Added"
    else
      render "new"
    end
  end

  def edit
    if !current_user.admin?
      redirect_to events_path
    end
    @event = Event.find(params[:id])
  end

  def update
    if !current_user.admin?
      redirect_to events_path
    end
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to events_path, :notice => "Event Updated"
    else
      render "edit"
    end
  end

  def destroy
    if !current_user.admin?
      redirect_to events_path
    end
    Event.find(params[:id]).destroy
    redirect_to events_path, :notice => "Event Deleted"
  end

  def event_params
    params.require(:event).permit(:title, :event_type, :venue, :tickets_avail, :tickets_total, :content, :date);
  end
end
