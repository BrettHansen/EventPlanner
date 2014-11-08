class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def available_events
    @events_all = Event.all
    @events_all - my_events
  end

  def my_events
    @events = []
    current_user.tickets.each do |ticket|
      @events << Event.find(ticket.event_id)
    end
    @events.sort_by! {|a| a.date}
  end
end
