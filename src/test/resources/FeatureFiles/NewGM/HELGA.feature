@RM6314
Feature:RM6314:Demand Management & Renewables Framework

  @NewGM
  Scenario Outline:RM6314:Demand Management & Renewables Framework
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Carbon Net Zero" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Energy Demand Management / Generation Services" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Heat networks and electricity generation assets" radio button
    And User clicks on the "Continue" button
    And User selects the "Energy advisory, design and technical services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Demand Management & Renewables Framework |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Energy Demand Management Generation Services" answer for the question "What type of Carbon Net Zero do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term     | recommendation |
      | Carbon Net Zero | RM6314         |
