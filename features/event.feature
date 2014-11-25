Feature: A User can interact with events.

  Scenario: The homepage for a signed-in user is the events page
    Given I am on "/users/sign_in"
    When I fill in "user_email" with "example@example.com"
    And I fill in "user_password" with "password"
    And I click "commit"
    Given I load the home page
    Then I expect to see "Symphony No. 9"