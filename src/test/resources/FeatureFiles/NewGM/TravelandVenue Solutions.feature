@RM6217
Feature:RM6217:Travel and Venue Solutions

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "ferry" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Travel" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page
  @Prod_Sanity
    @NewGM
  Scenario Outline:RM6217:Travel and Venue Solutions - LOT3
    When User selects the "Travel" radio button
    When User clicks on the "Continue" button
    When User selects the "Online and offline booking services for MOD" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Travel and Venue Solutions |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | ferry       | RM6217Lot3     |

  @NewGM
  Scenario Outline:RM6217:Travel and Venue Solutions - LOT4
    When User selects the "Venue services" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Travel and Venue Solutions |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Venue services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | ferry       | RM6217Lot4     |
