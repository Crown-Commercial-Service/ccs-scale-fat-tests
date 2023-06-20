@RM6182
Feature:RM6182: Occupational Health, Employee Assistance Programme Eye Care

  @NewGM
  Scenario Outline:RM6182: EOccupational Health, Employee Assistance Programme Eye Care-Lot4.1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "eye health" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Occupational Health, Employee Assistance, Eye Care" radio button
    When User clicks on the "Continue" button
    And I am on the "What type of service do you need?" page
    When User selects the "Occupational Health (OH)" radio button
    And User clicks on the "Continue" button
    And User selects the "Regional" radio button
    And User clicks on the "Continue" button
    And User selects the "London" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Occupational Health, Employee Assistance Programmes and Eye Care Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Occupational Health (OH)" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | eye health  | RM6182Lot4.1   |

  Scenario Outline:RM6182: EOccupational Health, Employee Assistance Programme Eye Care-Lot5
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "ECG" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Occupational Health, Employee Assistance, Eye Care" radio button
    When User clicks on the "Continue" button
    And I am on the "What type of service do you need?" page
    When User selects the "Eye care" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Occupational Health, Employee Assistance Programmes and Eye Care Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Eye care" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | ECG         | RM6182Lot5     |