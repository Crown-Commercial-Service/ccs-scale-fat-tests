@RegressionTest
Feature:Upcoming Agreement Verification

  Background:
    Given I am on a CCS website HomePage
    And I navigate to "Upcoming agreement"
  @Prod_Sanity
  @SearchUpcomingAgreement
  Scenario: Verify Filter feature
    And I should verify View All filter is defaulted


  @SearchUpcomingAgreement
  Scenario: Verify ContactUS,Pipeline report and HelpfulLinks Components
    Then I should see page component on Upcoming Agreement