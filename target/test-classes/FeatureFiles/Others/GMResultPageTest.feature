Feature: Testing the GM Result Page example (To be deleted)

  @Test1
  Scenario Outline: To verify user is displayed GM landing page
    #Given User logs in to the CCS application for "<ScenarioID>"
    #And User is navigated to CCS home page
    #And User enters "<framework>" details
    #And User clicks on the "Start now" button
    #Then User is displayed with GM landing page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    Then User is displayed with Need more information GM Result page
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with "<lookingFor>" answer for question number "1"
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    #Then User clicks on the Change button adjacent to question number "<string>"
    #And User clicks on the Change button adjacent to question "<string>"


    Examples:
      | ScenarioID | framework | lookingFor |
      | Scenario 1 | Linen     | Product    |

  @Linentest
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" and is provided with different set of question during the journey
    #Given User logs in to the CCS application for "<ScenarioID>"
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    Then User checks question content for question "linen-qa1"
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    Then User checks question content for question "linen-qa2"
    And User selects how much budget "<budgetRadio>" radio button
#    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    Then User checks question content for question "linen-qa3"
    And User selects how long contract "<contractRadio>" radio button
#    And And User enters contract length "<contractLength>" in the contract field
    And User clicks on the "Continue" button
    Then User checks question content for question "linen-qa4"
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    Then User checks question content for question "linen-qa5"
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User is displayed with "Start Procurement" button for: "<recommendation>" ordered recommendations
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractRadio>" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"
    And User clicks on the Change button adjacent to question "Do you need additional facilities management services?"

    #Then User should be displayed with recommendations "<recommServices>" services
    #And User should be displayed with a number of "<lots>" Lot services
    #And User should be displayed with Contact Us link
    #And User should be displayed with Questions and Answers
    #And User is displayed with the "<lookingFor>" answer for the question number "1"
    #And User is displayed with the "<budgetRadio>" answer for the question number "2"
    #And User is displayed with the "<serviceArea>" answer for the question number "3"
    #And User is displayed with the "<addFacilities>" answer for the question number "4"
    #And User clicks on the Change button adjacent to question number "3"
    #And User clicks on the Change button adjacent to question "Do you need additional services?"
    #And User can successfully expand the details section
    #Then User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #Then User is displayed with recommendations: "<recommendation>"
    #Then User is displayed with recommendations: "<recommendation>" in the right order"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea        | addFacilities | sector | lots | frameworkId | expirationDate | details      | recommendation |
      | Scenario 1 | Linen     | Service    | No          |              | No            |                | Cleanroom services | No            |        | 1    | RM6154      | 03/19/2023     | linenDetails | lot3 |