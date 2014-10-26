class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event].permit(:title, :content))

    if @event.save
      redirect_to events_path, :notice => "New Event Added"
    else
      render "new"
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event].permit(:title, :content))
      redirect_to events_path, :notice => "This event was updated"
    else
      render "edit"
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to events_path, :notice => "This event was deleted"
  end

  def event_params
    params.require(:title).require(:content);
  end
end
