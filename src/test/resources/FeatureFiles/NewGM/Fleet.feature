@NewGM
@RM6213 @RM6244 @RM6096 @RM6142 @RM6143 @RM6013
Feature:Fleet
  Scenario Outline:RM6213:Vehicle Charging Infrastructure Solutions
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "4x4" details and click "Start now" button
    #And User clicks on the "Start now" button
    And User selects the "Fleet" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Vehicle charging infrastructure solutions" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Vehicle Charging Infrastructure Solutions (VCIS) |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Vehicle charging infrastructure solutions" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | 4x4         | RM6213         |

  Scenario Outline:RM6244:Purchase of Standard and Specialist Vehicles
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Crew Bus" details and click "Start now" button
    #And User clicks on the "Start now" button
    And User selects the "Fleet" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Vehicle purchase" radio button
    And User clicks on the "Continue" button
    And User selects the "Other sectors" radio button
    And User clicks on the "Continue" button
    And User selects the "Passenger cars" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Purchase of Standard and Specialist Vehicles |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Vehicle purchase" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | Crew Bus    | RM6244Lot1     |

  Scenario Outline:RM6096:Vehicle Lease, Fleet Management & Flexible Rental Solutions
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Crew Bus" details and click "Start now" button
    #And User clicks on the "Start now" button
    And User selects the "Fleet" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Vehicle lease and hire" radio button
    And User clicks on the "Continue" button
    And User selects the "Hire vehicles up to 3.5 tonnes" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Vehicle Lease, Fleet Management & Flexible Rental Solutions |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Vehicle lease and hire" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | Crew Bus    | RM6096Lot1     |

  Scenario Outline:RM6142:Supply of tyres, glass and fast fit solutions
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "fire truck" details and click "Start now" button
    #And User clicks on the "Start now" button
    And User selects the "Fleet" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Tyres and/or fast fit products" radio button
    And User clicks on the "Continue" button
    And User selects the "Blue light sector" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Supply of tyres, glass and fast fit solutions |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Tyres and/or fast fit products" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | fire truck  | RM6142Lot1     |