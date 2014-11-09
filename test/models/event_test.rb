require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "title" do
    @event = Event.create(id: 1,
                          title: "",
                          event_type: "Event",
                          venue: "Venue",
                          tickets_avail: 1000,
                          tickets_total: 1000,
                          content: "Description.",
                          date: "1994-03-01 07:58:00")
    assert_not @event.save

    @event = Event.create(id: 1,
                          title: "Event",
                          event_type: "Event",
                          venue: "Venue",
                          tickets_avail: 1000,
                          tickets_total: 1000,
                          content: "Description.",
                          date: "1994-03-01 07:58:00")
    assert @event.save
  end

  test "content" do
    @event = Event.create(id: 1,
                          title: "Event",
                          event_type: "Event",
                          venue: "Venue",
                          tickets_avail: 1000,
                          tickets_total: 1000,
                          content: "",
                          date: "1994-03-01 07:58:00")
    assert_not @event.save

    @event = Event.create(id: 1,
                          title: "Event",
                          event_type: "Event",
                          venue: "Venue",
                          tickets_avail: 1000,
                          tickets_total: 1000,
                          content: "Description.",
                          date: "1994-03-01 07:58:00")
    assert @event.save
  end
end
