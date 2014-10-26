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

  end

  def update

  end

  def destroy

  end

  def event_params
    params.require(:title).require(:content);
  end
end
