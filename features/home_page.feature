Feature: A new user comes to home page and fills the email and password to login.

  Scenario: New user visits page
    Given I load the home page
    Then the home page is loaded

  Scenario: user logs in
    Given I load the login page
    And I fill in "user_email" with "example@example.com"
    And I fill in "user_password" with "password"
    And I click "commit"
    Then I have signed up

  Scenario: user registers
    Given I load the register page
    And I fill in "user_email" with "example27@example.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I click "commit"
    Then I have registered