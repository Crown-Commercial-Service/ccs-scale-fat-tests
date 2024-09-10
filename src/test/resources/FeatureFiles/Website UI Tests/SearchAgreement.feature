@RegressionTest
Feature: SearchAgreement Verification

  Background:
    Given I am on a CCS website HomePage
    And I navigate to Search agreement

@SearchAgreement
  Scenario: Verify Search feature
    When I enter "RM6102" in the search agreement field
    And User clicks on the "Apprenticeship Training Dynamic Marketplace DPS" link
    And I am on the "Apprenticeship Training Dynamic Marketplace DPS" page
    And I should see the details section
      | Description            |
      | Benefits               |
      | Products and suppliers |
      | How to buy             |
      | Documents              |
    Then I should the key facts details
      | Agreement ID |
      | Start date   |
      | End date     |
      | Lots         |
    When User clicks on the "Description" link
    Then The accordion should be expanded

  @SearchAgreement
  Scenario: Verify Filter feature
    And I should verify Live filter is defaulted
    When I select Expired Option
    Then I verify the filter summary

  @SearchAgreement
  Scenario: Verify Upcoming agreements,Helpful Links and AgreementPricing Components
    Then I should see page component on search Agreement page


