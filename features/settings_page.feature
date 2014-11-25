#Feature: A user attempts to access and modify their settings.
#
#  Scenario: User navigates to their settings.
#    Given I am an existing user
#    And I am signed in
#    And the webpage is loaded
#    And I click "Settings"
#    Then the settings page is loaded
#
#  Scenario: User changes their password.
#    Given the settings page is loaded
#    And I fill in "Password (leave blank if you don't want to change it)" with "newpassword"
#    And I fill in "Password confirmation" with "newpassword"
#    And I fill in "Current password (we need your current password to confirm your changes)" with "password"
#    And I click "Update"
#    Then the account is updated successfully
#    And I click "Settings"
#    And the settings page is loaded
#    And I fill in "Password (leave blank if you don't want to change it)" with "password"
#    And I fill in "Password confirmation" with "password"
#    And I fill in "Current password (we need your current password to confirm your changes)" with "newpassword"
#    And I click "Update"
#    Then the account is updated successfully
#
#  Scenario: User changes their email.
#    Given the settings page is loaded
#    And I fill in "Email" with "Example1@Example.com"
#    And I fill in "Current password (we need your current password to confirm your changes)" with "password"
#    And I click "Update"
#    Then the account is updated successfully
#    And I click "Settings"
#    And the settings page is loaded
#    And I fill in "Email" with "Example@Example.com"
#    And I fill in "Current password (we need your current password to confirm your changes)" with "password"
#    And I click "Update"
#    Then the account is updated successfully
#
#  Scenario: User changes their avatar.
#    Given the settings page is loaded
#    And I click "Choose File"
#    # Choose an image file?
#    And I fill in "Current password (we need your current password to confirm your changes)" with "password"
#    And I click "Update"
#    Then the account is updated successfully