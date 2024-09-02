@RegressionTest
Feature: SearchAgreement Verification

  Background:
    Given I am on a CCS website HomePage
    And I navigate to Upcoming agreement

  @SearchUpcomingAgreement
  Scenario: Verify Filter feature
    And I should verify View All filter is defaulted


  @SearchUpcomingAgreement1
  Scenario: Verify ContactUS,Pipeline report and HelpfulLinks Components
    Then I should see page component on Upcoming Agreement