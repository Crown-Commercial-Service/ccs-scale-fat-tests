@NewGM

Feature:Demand Management & Renewables FrameworkAndRenewables DPS

  @RM6313
  Scenario Outline:RM6313:Demand Management & Renewables DPS
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Off-shore wind and the marine environment" details and click "Start now" button
    And User selects the "Buildings - Construction" radio button
    And User clicks on the "Continue" button
    And User selects the "Yes" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Other decarbonisation measures" radio button
    And User clicks on the "Continue" button
    And User selects the "Yes" radio button
    And User clicks on the "Continue" button
    And User selects the "Wider energy or renewable generation products" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Demand Management & Renewables DPS |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Wider energy or renewable generation products" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term                               | recommendation |
      | off-shore wind and the marine environment | RM6313         |

  @RM6314
  Scenario Outline:RM6314:Demand Management & Renewables Framework - Lot1.1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Carbon Off-Setting" details and click "Start now" button
    And User selects the "Buildings - Construction" radio button
    And User clicks on the "Continue" button
    And User selects the "Yes" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Solar photovoltaic services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Demand Management & Renewables Framework |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Solar photovoltaic services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term        | recommendation |
      | Carbon Off-Setting | RM6314Lot1.1   |
