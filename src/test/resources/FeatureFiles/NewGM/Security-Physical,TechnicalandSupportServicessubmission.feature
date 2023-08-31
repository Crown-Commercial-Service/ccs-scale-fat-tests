@RM6257
Feature:RM6257: Security - Physical, Technical and Support Services submission

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "network video recorders (NVR)" details and click "Start now" button
    #When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Security - Physical, Technical and Support Service" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page

  @NewGM
  Scenario Outline:RM6257: Security - Physical, Technical and Support Services submission - LOT1
    When User selects the "Total security services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Security - Physical, Technical and Support Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Total security services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term                   | recommendation |
      | network video recorders (NVR) | RM6257Lot1     |

  @NewGM
  Scenario Outline:RM6257: Security - Physical, Technical and Support Services submission - LOT4
    When User selects the "Additional security services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Security - Physical, Technical and Support Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Additional security services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"
    Examples:
      | search_term                   | recommendation |
      | network video recorders (nvr) | RM6257Lot4     |
