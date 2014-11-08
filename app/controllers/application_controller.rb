class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def available_events
    Event.all - my_events - booked_events - past_events
  end

  def my_events
    @events = []
    current_user.tickets.each do |ticket|
      @events << Event.find(ticket.event_id)
    end
    @events.sort_by! {|a| a.date}
  end

  def booked_events
    @events_all = Event.all
    @events_booked = []
    @events_all.each do |event|
      if event.tickets_avail == 0
        @events_booked << event
      end
    end
    @events_booked
  end

  def past_events
    @events_all = Event.all
    @past_events = []
    @events_all.each do |event|
      if event.date.to_s < Date.today.to_s
        @past_events << event
      end
    end
    @past_events
  end
end
