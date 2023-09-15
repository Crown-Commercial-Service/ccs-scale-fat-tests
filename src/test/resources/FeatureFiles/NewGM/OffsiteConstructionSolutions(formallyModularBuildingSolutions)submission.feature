@RM6184
@NewGM

Feature:Offsite Construction Solutions (formally Modular Building Solutions) submission

  Scenario Outline:RM6184:Offsite Construction Solutions (formally Modular Building Solutions) submission - Lot1.1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "CNZ" details and click "Start now" button
    And User selects the "Offsite Construction" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Build estate including education sector" radio button
    And User clicks on the "Continue" button
    And User selects the "3D Turnkey Solutions" radio button
    And User clicks on the "Continue" button
    And User selects the "Buy" radio button
    And User clicks on the "Continue" button
    And User selects the "£0m > £15m purchase of 3D turnkey solutions only" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Offsite Construction Solutions |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Offsite Construction" answer for the question "What type of CNZ do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | CNZ         | RM6184Lot1.1   |

  Scenario Outline:RM6184:Offsite Construction Solutions (formally Modular Building Solutions) submission - Lot6
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Energy-efficient" details and click "Start now" button
    And User selects the "Offsite Construction" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Thermal efficiency upgrades" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Offsite Construction Solutions |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Thermal efficiency upgrades" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term      | recommendation |
      | energy-efficient | RM6184Lot6     |
