class TicketsController < ApplicationController
  def create
    @user = current_user
    @event = Event.find(ticket_params[:event_id])

    if ticket_params[:quantity].to_i <= 0
      flash[:notice] = 'Invalid number of tickets'
      redirect_to event_path(ticket_params[:event_id])
    elsif ticket_params[:quantity].to_i <= @event.tickets_avail.to_i
      @ticket = @user.tickets.create(ticket_params)
      @event.tickets_avail= @event.tickets_avail.to_i - ticket_params[:quantity].to_i
      @event.save
      redirect_to my_events_path
    else
      flash[:notice] = 'Not enough tickets available'
      redirect_to event_path(ticket_params[:event_id])
    end
  end

  def show
    @events = my_events
    @tickets = current_user.tickets
  end


  private
  def ticket_params
    params.require(:ticket).permit(:quantity, :event_id)
  end
end
