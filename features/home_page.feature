Feature: A new user comes to home page and fills the email and password to login.
But website returns the same home page as reply

  Scenario: New user tries login
    Given I am a new user
    And I load the home page
    Then the home page is loaded