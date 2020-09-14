Feature: https://crowncommercialservice.atlassian.net/browse/SFC-84 story Epic: SFC-76

  @Test @SFC-84 @SFC-236 @SFC-76
  Scenario Outline: As a buyer I want to be given a CTA button to return to the search result page after initiating the GM journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User clicks on the "Search framework" button
    Then The Back to search result screen is opened in the same tab

    Examples:
    Examples:
      | ScenarioID | framework | lookingFor |
      | Scenario 1 | Linen     | Service    |