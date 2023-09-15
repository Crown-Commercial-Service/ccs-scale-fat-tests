Feature: GM Journey for Linen framework

  @RM6232
    @RM6264
    @NewGM
  Scenario Outline:RM6232:Facilities Management and Workplace Services(RM6232)- LOT2a
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "linen" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Linen" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    When User selects the "Facilities management (FM) services" radio button
    And User clicks on the "Continue" button
    And User selects the "Hard facilities management (FM) services" radio button
    And User clicks on the "Continue" button
    And User selects the "My budget is £0 to £1.5 million" radio button
    And User clicks on the "Continue" button
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Hard facilities management (FM) services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation    |
      | linen       | RM6232Lot2aRM6264 |
