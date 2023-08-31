@RM6188
Feature:RM6188 Audit & Assurance Services
  @NewGM
  Scenario Outline:RM6188 Audit & Assurance Services-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Governance reviews" details and click "Start now" button
    #And User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Audit and Assurance" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Core internal audit services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Audit & Assurance Services (A&AS) |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Core internal audit services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term        | recommendation |
      | Governance reviews | RM6188Lot1     |
  @NewGM
  Scenario Outline:RM6188 Audit & Assurance Services-Lot4
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Fraud prevention advice" details and click "Start now" button
    #And User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Audit and Assurance" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Other independent assurance services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Audit & Assurance Services (A&AS) |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Other independent assurance services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term             | recommendation |
      | Fraud prevention advice | RM6188Lot4     |

