@RM6174
Feature:RM6174: MFD

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Faxing" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Print and Digital" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page


  Scenario Outline:RM6174: MFD - LOT1
    When User selects the "Multifunctional devices (MFDs) and basic print management software" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Multifunctional Devices (MFDs), Print and Digital Workflow Software Services and Managed Print Service Provision |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Multifunctional devices (MFDs) and basic print management software" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | Faxing      | RM6174Lot1     |

  Scenario Outline:RM6174: MFD - LOT4
    When User selects the "Print consultancy" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Multifunctional Devices (MFDs), Print and Digital Workflow Software Services and Managed Print Service Provision |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Print consultancy" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | Faxing      | RM6174Lot4     |

