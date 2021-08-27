Feature:Agreement Result page

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "carers" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Which area best matches your needs?" page
    When User selects the "Buildings" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose buildings. Select the area which best matches your needs." page
    When User selects the "Buildings or construction" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose buildings or construction. Select the product or service which best matches your needs." page
    When User selects the "Building solutions" radio button
    When User clicks on the "Continue" button
    And I am on agreement result title "2 agreements that match your needs" page


  Scenario Outline: Verify that user can view the agreement details
    And User can successfully expand the details section
    Then I should see the recommended agreements
    |Modular Building Solutions|
    |Project Management and Full Design Team Services|
  And User is displayed with initial search phrase from "<search_term>"
  And User is displayed with "Buildings" answer for the question "Which area best matches your needs?"
  And User is displayed with Framework Lot Recommended: "<recommendation>"
  
  Examples:
  |search_term|recommendation|
  |carers     |RM6014RM3741 |


  Scenario: Verify that user can start again to change answers
    When User clicks on the "Start again to change your answers" button
    Then I am on the "Which area best matches your needs?" page


  Scenario: Verify that user can navigate to Contact CCS page
    When User clicks on the "Contact CCS" button on the result page
    Then I am on the "Before you contact CCS" page
    When User clicks on the contact CCS button
    Then I am on the "Contact CCS" page









