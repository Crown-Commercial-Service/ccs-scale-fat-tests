Feature: SFC-69 related test cases. Link to story: https://crowncommercialservice.atlassian.net/browse/SFC-69

  @Test @SFC-65 @SFC-118 @SFC-69
  Scenario Outline: As a buyer I want to be given a CTA button to return to the search result page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    Then User is displayed with GM landing page
    And User clicks on the "Start now" button
    And User clicks on the "Search framework" button
    Then The Back to search result screen is opened in the same tab

    Examples:
      | ScenarioID | framework |
      | Scenario 1 | Linen     |
