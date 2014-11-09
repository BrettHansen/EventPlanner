class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def available_events
    @events = Event.all - my_events - booked_events - past_events
    @events.sort_by! {|a| a.date}
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

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me,
                                                            :avatar, :avatar_cache) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation,
                                                                   :current_password, :avatar, :avatar_cache) }
  end
end
