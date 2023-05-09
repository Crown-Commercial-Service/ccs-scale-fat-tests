
@RM6262
Feature:RM6262  Crown Hosting II

  Scenario Outline:RM6262  Crown Hosting II
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "REGO" details and click "Start now" button
    And User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Hosting service" radio button
    And User clicks on the "Continue" button
    And I am on the "What type of service do you need?" page
    And User selects the "ICT relocation" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Crown Hosting II |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "ICT relocation" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | REGO        | RM6262Lot1     |


