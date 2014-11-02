class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method [:current_user, :logged_in?]

  protected

    def login(user)
      session[:user_id] = user.id
    end

    def current_user
      if session[:user_id]
        User.find(session[:user_id])
      end
    end

    def logged_in?
      !current_user.nil?
    end

    def create_admin
      if !User.exists?(1)
        @admin = User.create(:username => "admin@admin.com", :password => "password", :password_confirmation => "password")
        @admin.save
      end
    end

  def available_events
    @events_all = Event.all
    @events_exclude = []
    current_user.tickets.each do |ticket|
      @events_exclude << Event.find(ticket.event_id)
    end
    @events_all - @events_exclude
  end
end
