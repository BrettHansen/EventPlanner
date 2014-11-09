require 'test_helper'

class TicketTest < ActiveSupport::TestCase

  test "quantity" do
    @user = User.create(id: 1, email: "example@email.com", password: "password", password_confirmation: "password")
    @event = Event.create(id: 1,
        title: "Event",
        event_type: "Event",
        venue: "Venue",
        tickets_avail: 1000,
        tickets_total: 1000,
        content: "Description.",
        date: "1994-03-01 07:58:00")
    @user.save
    @event.save

    @ticket = @user.tickets.create(:quantity => 0, :event_id => 1)
    assert_not @user.tickets.include?(@ticket)

    @ticket = @user.tickets.create(:quantity => 1, :event_id => 1)
    assert @user.tickets.include?(@ticket)
  end

  test "event_id" do
    @user = User.create(id: 1, email: "example@email.com", password: "password", password_confirmation: "password")
    @event = Event.create(id: 1,
                          title: "Event",
                          event_type: "Event",
                          venue: "Venue",
                          tickets_avail: 1000,
                          tickets_total: 1000,
                          content: "Description.",
                          date: "1994-03-01 07:58:00")

    @ticket = @user.tickets.create(:quantity => 1, :event_id => 0)
    assert_not @user.tickets.include?(@ticket)

    @ticket = @user.tickets.create(:quantity => 1, :event_id => 1)
    assert @user.tickets.include?(@ticket)
  end
  # test "the truth" do
  #   assert true
  # end
end
