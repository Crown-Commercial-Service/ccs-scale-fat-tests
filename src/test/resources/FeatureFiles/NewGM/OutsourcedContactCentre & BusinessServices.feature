@RM6181
Feature:RM6181:Outsourced Contact Centre & Business Services
  @NewGM
  Scenario Outline:RM6181:Contact Centre Services-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Integrated voice/call recording and storing" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Contact Centre" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    When User selects the "Contact centre services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Outsourced Contact Centre and Business Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Contact centre services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term                                | recommendation |
      | Integrated voicecall recording and storing | RM6181Lot1     |

  Scenario Outline:RM6181:Business Services-Lot2
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "procurement" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Business Services" radio button
    When User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    When User selects the "Financial accounting" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Outsourced Contact Centre and Business Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Financial accounting" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | procurement | RM6181Lot2     |
