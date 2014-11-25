Feature: Event functionality

  Scenario: Past events not shown on homepage
    Given I sign in as admin
    When I click "Add a new event"
    When I fill in a unique past event
    When I choose "2009" from "event_date_1i"
    When I fill in "event_event_type" with "Type"
    When I fill in "event_venue" with "Venue"
    When I fill in "event_tickets_total" with "1"
    When I fill in "event_content" with "Past Event Content"
    When I click "commit"
    Then I expect not to see "Past Event"

  Scenario: Event detail page results from clicking thumbnail
    Given I sign in as user
    When I visit "/"
    And I click "Example Event"
    Then I am on "/events/10"
    And I expect to see "Example Event"
    And I expect to see "Wednesday, August 23, 2017 at 6:26 pm"
    And I expect to see "Event Type at Event Venue"
    And I expect to see "Total Eclipse in Carbondale, IL"
    And I expect to see "31 out of 1127 tickets available"