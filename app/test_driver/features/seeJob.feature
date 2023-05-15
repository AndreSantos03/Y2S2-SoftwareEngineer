Feature: Jobs appear in Offers Screen
  Scenario: When I am on Offers Screen I should see jobs
    Given I am on "offersScreen"
    Then I should see "job"
    Then I scroll "jobList" for 2 seconds
    Then I should see "job"