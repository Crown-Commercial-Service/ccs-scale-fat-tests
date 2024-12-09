@NewGM1
Feature:Post and Courier

  @RM6171
  Scenario Outline:Post and Courier
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "24 hour" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Post and Courier" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Courier" radio button
    And User clicks on the "Continue" button
    And User selects the "Collection and delivery" radio button
    And User clicks on the "Continue" button
    And User selects the "Yes" radio button
    And User clicks on the "Continue" button
    And User clicks on the open all link
    Then I should see the recommended agreements
      | Courier and Specialist Movements |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Collection and delivery" answer for the question "What courier service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | 24 hour     | RM6171Lot2     |

  @RM6280
  Scenario Outline:Post and Courier
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Dangerous goods movements" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    And User selects the "Post and Courier" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Postal" radio button
    And User clicks on the "Continue" button
    And User selects the "Mailroom equipment" radio button
    And User clicks on the "Continue" button
    And User clicks on the open all link
    Then I should see the recommended agreements
      | Postal Services & Solutions |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Mailroom equipment" answer for the question "What postal service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term               | recommendation |
      | Dangerous goods movements | RM6280Lot1     |