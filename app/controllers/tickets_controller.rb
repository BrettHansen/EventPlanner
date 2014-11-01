class TicketsController < ApplicationController
  def create
    @user = current_user
    @ticket = @user.tickets.create(ticket_params)
    redirect_to myevents_path
  end

  def show
    @user = current_user
    @tickets = @user.tickets
    @events = []
    @tickets.each do |ticket|
      @events << Event.find(ticket.event_id)
    end
    @events.sort_by! {|a| a.date}
  end


  private
  def ticket_params
    params.require(:ticket).permit(:quantity, :event_id)
  end
end
