@regression-tests
Feature: Error handling scenarios for fm journeys

@PostalErrorHandling1
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of technical security journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
  Then User checks question content for question "postal-qa0"
  When User clicks on the "Continue" button
  Then User checks error handling content for question "postal-qa0"
  When User selects response of looking for "<requirements>"
  When User clicks on the "Continue" button
  Then User checks question content for question "postal-qa1"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "postal-qa1"
    When User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    Then User checks question content for question "postal-qa2"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "postal-qa2"
  When User selects what type "<productType>" do you need radio button
  And User clicks on the "Continue" button
  Then User checks question content for question "postal-qa3"
  When User clicks on the "Continue" button
  Then User checks error handling content for question "postal-qa3"
  When User selects the "<yesno>" radio button
  And User clicks on the "Continue" button
    Then User checks Routes to Market Definitions content on "routesToMarketContent"

    Examples:
      | ScenarioID | framework   | requirements    | lookingFor | productType         |yesno |
      | Scenario 1 | Royal Mail  | Postal Services | Product    | Mail Room Equipment | Yes  |
