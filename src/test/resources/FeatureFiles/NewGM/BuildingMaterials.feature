@RM6157
Feature:RM6157: Building Materials
  @runME

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "PPE" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Building Materials and Equipment" radio button
    When User clicks on the "Continue" button
    And I am on the "What product are you looking for?" page


  Scenario Outline:RM6157: Building Materials - LOT1
    When User selects the "Heavy building materials and one stop shop" radio button
    When User clicks on the "Continue" button
    And User can successfully expand the details section
    Then I should see the recommended agreements
      | Building Materials and Equipment |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Heavy building materials and one stop shop" answer for the question "What product are you looking for?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | PPE         | RM6157Lot1     |


  Scenario Outline:RM6157: Building Materials - LOT9
    When User selects the "Building and Construction tools & Equipment" radio button
    When User clicks on the "Continue" button
    When User selects the "Hire" radio button
    When User clicks on the "Continue" button
    And User can successfully expand the details section
    Then I should see the recommended agreements
      | Building Materials and Equipment |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Building and Construction tools & Equipment" answer for the question "What product are you looking for?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | PPE         | RM6157Lot9     |