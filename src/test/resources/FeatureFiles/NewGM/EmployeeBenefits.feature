@RM6133
Feature:RM6133: Employee Benefits

  Scenario Outline:RM6133: Employee Benefits
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Gift card" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Employee Benefits" radio button
    When User clicks on the "Continue" button
    And I am on the "What type of service do you need?" page
    When User selects the "Child care voucher scheme" radio button
    When User clicks on the "Continue" button
    And User can successfully expand the details section
    Then I should see the recommended agreements
      | Employee Benefits |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Child care voucher scheme" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | Gift card   | RM6133         |

  Scenario Outline:RM6133: Employee Benefits
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "vouchers" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Employee Benefits" radio button
    When User clicks on the "Continue" button
    And I am on the "What type of service do you need?" page
    When User selects the "Employee financial wellbeing scheme" radio button
    When User clicks on the "Continue" button
    And User can successfully expand the details section
    Then I should see the recommended agreements
      | Employee Benefits |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Employee financial wellbeing scheme" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | vouchers    | RM6133         |