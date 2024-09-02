@RM6102 @RM6145 @RM6219
Feature:RM6102 RM6145 RM6219:Apprenticeship,Learning and Development
  @NewGM
  Scenario Outline:RM6102:Apprenticeship Training
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Apprenticeship Levy" details and click "Start now" button
    #When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Apprenticeship Training" radio button
    When User clicks on the "Continue" button
    And I am on the "What type of service do you need?" page
    When User selects the "Learning and training services" radio button
    And User clicks on the "Continue" button
    Then User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Apprenticeship Training" answer for the question "What type of Apprenticeship Levy do you need?"
    And User is displayed with "Learning and training services" answer for the question "What type of service do you need?"

    Examples:
      | search_term         |
      | Apprenticeship Levy |

  Scenario Outline:RM6145:Learning And Development-Lot6
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Bespoke Training" details and click "Start now" button
    #And User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Learning & Development" radio button
    And User clicks on the "Continue" button
    And I am on the "What type of service do you need?" page
    And User selects the "Learning and Development" radio button
    And User clicks on the "Continue" button
    And User selects the "Yes" radio button
    And User clicks on the "Continue" button
    And User selects the "Learning Design and Delivery and Subject Matter Expertise and Coaching" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Learning and Development |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Learning Design and Delivery and Subject Matter Expertise and Coaching" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term      | recommendation |
      | Bespoke Training | RM6145Lot6     |
  @NewGM
  Scenario Outline:RM6219:Learning And Development
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "CSHR" details and click "Start now" button
    #And User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Learning & Development" radio button
    And User clicks on the "Continue" button
    And I am on the "What type of service do you need?" page
    And User selects the "Learning and Development" radio button
    And User clicks on the "Continue" button
    And User selects the "No" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Learning and Training Services DPS |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Learning and Development" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | CSHR        | RM6219         |
