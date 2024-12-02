@RM6251
Feature:RM6251: Supply of Energy 2

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Green" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Energy" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page

  @NewGM
  Scenario Outline:RM6251: Supply of Energy 2 - LOT1
    When User selects the "Supply of electricity" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Supply of Energy 2 |
    Then I should see the agreement type
      | PCR06 Framework |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Supply of electricity" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | green       | RM6251Lot1     |

  @NewGM
  Scenario Outline:RM6251: Supply of Energy 2 - LOT2
    When User selects the "Supply of gas" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Supply of Energy 2 |
    Then I should see the agreement type
      | PCR06 Framework |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Supply of gas" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"
    Examples:
      | search_term | recommendation |
      | green       | RM6251Lot2     |

