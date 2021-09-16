Feature: People Journey

  Background:
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "carers" details and click "Start now" button
    And I am on the "Find a commercial agreement" page
    When User clicks on the "Start now" button
    And I am on the "Which area best matches your needs?" page

  Scenario: Verify that user can navigate through the People Journey
    When User selects the "People" radio button
    And User clicks on the "Continue" button
    And I am on the "You chose people. Select the area which best matches your needs." page
    Then I should see the following options
      |Apprenticeship services            |
      |Employee services or benefits      |
      |Legal or consultancy services      |
      |Recruitment or employment services |
      |Anything else                      |
    When User selects the "Anything else" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose Anything else. Select the product or service which best matches your needs." page
    When User selects the "Contact centre services" radio button
    When User clicks on the "Continue" button
    And I am on agreement result title "1 agreement that matches your needs" page
    Then I should see the recommended agreements
      |Contact Centre Services|


  Scenario: Verify that validation error message is displayed when an option is not selected(People Journey)
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "People" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose people. Select the area which best matches your needs." page
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Recruitment or employment services" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose recruitment or employment services. Select the product or service which best matches your needs." page
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Public sector resourcing" radio button
    When User clicks on the "Continue" button
    And I am on agreement result title "1 agreement that matches your needs" page