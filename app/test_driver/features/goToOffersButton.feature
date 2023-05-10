Feature: Map Screen changes to User Screen
  Scenario: When I am on Map Screen and I click the user button it changes to User Screen
    Given I have "userButton"
    Then I tap the "userButton" button
    # Then I should have "signInScreen" on screen