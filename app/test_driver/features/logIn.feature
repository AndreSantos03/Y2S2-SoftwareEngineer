# Acceptance test 1 - Iteration 3
Feature: Logging in with already created account
  Scenario: I am already a registered user and I want to log in
    Given I am on "mapScreen"
    When I tap "userButton"
    Then I should have "fillemail"
    And I should have "fillpassword"
    When I fill the "fillpassword" field with "password123"
    And I fill the "fillemail" field with "antonio@gmail.com"
    And I tap "loginButton"
    # The one bellow is temporary and should be removed in the end
    # of the last iteration when clicking the logIn button goes into userScreen
    And I tap "arrowBackButton"
    And I tap "userButton"
    Then I should have "userScreen"