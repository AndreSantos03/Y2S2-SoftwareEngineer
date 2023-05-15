Feature: Map Screen changes to Offers Screen
  Scenario: When I am on Map Screen and I click the offers button it changes to User Screen
    Given I have "searchButton"
    When I tap the "searchButton" button
    Then I should have "offersScreen" on screen