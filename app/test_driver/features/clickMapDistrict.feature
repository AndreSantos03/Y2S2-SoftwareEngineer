Feature: Clicking a district from map and seeing its information
  Scenario: When I am on MapScreen and I click on a district it changes to DistrictScreen and displays district's information
    Given I am on screen "mapScreen"
    Then I pause for 5 seconds
    Then I should have "mapImage" and "aveiro"
    When I tap aveiro : "aveiro"
    Then I should have districtScreen1 : "districtScreen1"
    When I tap districtJobsButton : "districtJobsButton"
    Then I should see "job"
