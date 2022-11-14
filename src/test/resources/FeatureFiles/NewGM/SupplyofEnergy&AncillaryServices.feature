@RM6011
Feature:RM6011: Supply of Energy & Ancillary Services

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Green" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Energy" radio button
    When User clicks on the "Continue" button
    And I am on the "What service are you looking for?" page


  Scenario Outline:RM6141: Supply of Energy & Ancillary Services - LOT1
    When User selects the "Electricity and power" radio button
    When User clicks on the "Continue" button
    And User can successfully expand the details section
    Then I should see the recommended agreements
      | Supply of Energy and Ancillary Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Electricity and power" answer for the question "What service are you looking for?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | green       | RM6011Lot1     |

  Scenario Outline:RM6141: Supply of Energy & Ancillary Services - LOT3
    When User selects the "Gas" radio button
    When User clicks on the "Continue" button
    And User can successfully expand the details section
    Then I should see the recommended agreements
      | Supply of Energy and Ancillary Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Gas" answer for the question "What service are you looking for?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"
    Examples:
      | search_term | recommendation |
      | green       | RM6011Lot3     |

