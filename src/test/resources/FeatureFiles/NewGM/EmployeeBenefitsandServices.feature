@RM6273
Feature:RM6273: Employee Benefits and Services

  @NewGM
  Scenario Outline:RM6273: Employee Benefits and Services-Lot 1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "financial wellbeing" details and click "Start now" button
    When User selects the "Employee Benefits" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    When User selects the "Voucher schemes for public sector employees" radio button
    And User clicks on the "Continue" button
    And User selects the "Cycle to work scheme" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Employee Benefits and Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Cycle to work scheme" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term         | recommendation |
      | financial wellbeing | RM6273Lot1     |

  Scenario Outline:RM6273: Employee Benefits and Services-Lot 1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "employee bike scheme" details and click "Start now" button
    When User selects the "Employee Benefits" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    When User selects the "Voucher schemes for public sector employees" radio button
    And User clicks on the "Continue" button
    And User selects the "Employee financial wellbeing scheme" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Employee Benefits and Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Employee financial wellbeing scheme" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term          | recommendation |
      | employee bike scheme | RM6273Lot1     |


  Scenario Outline:RM6273:Employee Benefits and Services-Lot 1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Gift card" details and click "Start now" button
    #When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Employee Benefits" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Voucher schemes for public sector employees" radio button
    And User clicks on the "Continue" button
    And User selects the "Child care voucher scheme" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Employee Benefits and Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Voucher schemes for public sector employees" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | Gift card   | RM6273Lot1     |

  Scenario Outline:RM6273:Employee Benefits and Services-Lot 1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Gift card" details and click "Start now" button
    #When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Employee Benefits" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Voucher schemes for public sector employees" radio button
    And User clicks on the "Continue" button
    And User selects the "Employee financial wellbeing scheme" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Employee Benefits and Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Voucher schemes for public sector employees" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | Gift card   | RM6273Lot1     |
