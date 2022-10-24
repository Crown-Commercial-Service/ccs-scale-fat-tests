Feature: Corporate Solutions Journey

  Background:
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "carers" details and click "Start now" button
    And I am on the "Find a commercial agreement" page
    When User clicks on the "Start now" button
    And I am on the "Which area best matches your needs?" page
    When User selects the "Corporate Solutions" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose corporate solutions. Select the area which best matches your needs." page

  Scenario: Verify that user can navigate through the Corporate Solutions Journey
    Then I should see the following options
      | Financial services                       |
      | Media or research                        |
      | Office, print or multifunctional devices |
      | Post, courier or logistic services       |
      | Travel services                          |
      | Vehicle services                         |
      | Anything else                            |
    When User selects the "Post, courier or logistic services" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose post, courier or logistic services. Select the product or service which best matches your needs." page
    Then I should see the following options
      | Courier services           |
      | Logisitics and warehousing |
      | Postal services            |
    When User selects the "Courier services" radio button
    When User clicks on the "Continue" button
    And I am on agreement result title "2 agreements that match your needs" page
    Then I should see the recommended agreements
      | Specialist Courier Services |
      | Courier Services (RM3798)   |

  Scenario: Verify that validation error message is displayed when an option is not selected(Corporate Solution Journey)
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Post, courier or logistic services" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose post, courier or logistic services. Select the product or service which best matches your needs." page
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Courier services" radio button
    When User clicks on the "Continue" button
    And I am on agreement result title "2 agreements that match your needs" page

