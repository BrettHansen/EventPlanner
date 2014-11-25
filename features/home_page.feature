Feature: A new user comes to home page and fills the email and password to login.

  Scenario: New user visits page
    Given I load the home page
    Then I expect to see "You need to sign in or sign up before continuing"

  Scenario: user logs in
    Given I load the login page
    When I fill in "user_email" with "example@example.com"
    And I fill in "user_password" with "password"
    And I click "commit"
    Then I expect to see "Signed in successfully"

  Scenario: user registers
    Given I load the register page
    When I fill in "user_email" with "example27@example.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I click "commit"
    Then I expect to see "Welcome! You have signed up successfully"