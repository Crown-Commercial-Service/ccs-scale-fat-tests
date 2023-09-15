@RM6240
@NewGM

Feature:Public Sector Legal Services submission

  Scenario Outline:RM6240:Vehicle Charging Infrastructure Solutions - Lot1a
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Rail Legal Services" details and click "Start now" button
    #And User clicks on the "Start now" button
    And User selects the "Legal" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Wider public sector" radio button
    And User clicks on the "Continue" button
    And User selects the "Legal Advice Service" radio button
    And User clicks on the "Continue" button
    And User selects the "England and Wales" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Public Sector Legal Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Legal Advice Service" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term         | recommendation |
      | Rail Legal Services | RM6240Lot1a    |

  Scenario Outline:RM6240:Vehicle Charging Infrastructure Solutions - Lot3
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "IP Exploitation" details and click "Start now" button
    #And User clicks on the "Start now" button
    And User selects the "Legal" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Wider public sector" radio button
    And User clicks on the "Continue" button
    And User selects the "Transport rail legal services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Public Sector Legal Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Transport rail legal services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term     | recommendation |
      | IP Exploitation | RM6240Lot3     |
