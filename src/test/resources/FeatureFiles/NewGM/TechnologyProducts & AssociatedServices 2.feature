@RM6098
Feature:RM6098:Technology Products & Associated Services 2

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "macbook" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Technology Products" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page

  @NewGM
  Scenario Outline:RM6098:Technology Products & Associated Services 2- LOT1
    When User selects the "Hardware and software with associated services" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Technology Products & Associated Services 2 |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Hardware and software with associated services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | macbook     | RM6098Lot1     |

  @NewGM
  Scenario Outline:RM6098:Technology Products & Associated Services 2- LOT7
    When User selects the "Sustainability and circular IT" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Technology Products & Associated Services 2 |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Sustainability and circular IT" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | macbook     | RM6098Lot7     |

