@Deleted
Feature:RM6119: Furniture & Associated Services

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Teacher Chair" details and click "Start now" button
    #When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Furniture and Associated Services" radio button
    When User clicks on the "Continue" button
    And I am on the "Do you need a service or product?" page


  Scenario Outline:RM6119: Furniture & Associated Services - LOT2
    When User selects the "Product" radio button
    And User clicks on the "Continue" button
    And User selects the "Residential Furniture" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Furniture & Associated Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Residential Furniture" answer for the question "What product do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term   | recommendation |
      | Teacher Chair | RM6119Lot2     |

  Scenario Outline:RM6119: Furniture & Associated Services - LOT4
    When User selects the "Product" radio button
    And User clicks on the "Continue" button
    And User selects the "Educational Furniture" radio button
    And User clicks on the "Continue" button
    And User selects the "Higher and Further Education needs and associated services" radio button
    And User clicks on the "Continue" button
    And User selects the "I need fixed lecture hall seating" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Furniture & Associated Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Higher and Further Education needs and associated services" answer for the question "What product do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term   | recommendation |
      | Teacher Chair | RM6119Lot4     |

  Scenario Outline:RM6119: Furniture & Associated Services - LOT7
    When User selects the "Repair and renovation service" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Furniture & Associated Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Repair and renovation service" answer for the question "Do you need a service or product?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term   | recommendation |
      | Teacher Chair | RM6119Lot7     |