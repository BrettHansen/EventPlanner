class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show

  end

  def new

  end

  def create
    Event.create!(params.permit(:title).permit(:content))
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
