Feature: A User can interact with events.

  Scenario: User clicks event thumbnail for event details page
    Given I am an existing user
    And I am signed in
    And I load the home page
    And I click an event thumbnail
    Then The event detail page is loaded