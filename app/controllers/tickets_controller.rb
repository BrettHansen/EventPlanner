class TicketsController < ApplicationController
  def create
    @user = current_user
    @event = Event.find(ticket_params[:event_id])
    if ticket_params[:quantity].to_i <= @event.tickets_avail.to_i
      @ticket = @user.tickets.create(ticket_params)
      @event.tickets_avail= @event.tickets_avail.to_i - ticket_params[:quantity].to_i
      @event.save
      redirect_to myevents_path
    else
      flash[:error] = 'Not enough tickets available'
      redirect_to event_path(ticket_params[:event_id])
    end
  end

  def show
    @events = []
    current_user.tickets.each do |ticket|
      @events << Event.find(ticket.event_id)
    end
    @events.sort_by! {|a| a.date}
  end


  private
  def ticket_params
    params.require(:ticket).permit(:quantity, :event_id)
  end
end
