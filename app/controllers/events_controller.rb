class EventsController < ApplicationController
  def index

  end

  def create
    Event.create!(params.permit(:title).permit(:content))
  end
end
