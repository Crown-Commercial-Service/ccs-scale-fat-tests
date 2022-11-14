@RM6147
Feature: GM Journey for Courier and Specialist Movements

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User is displayed with "<lookingFor>" answer for the question "What type of service do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor                              | frameworkId | recommendation |
      | Scenario 1 | detection | Courier   | Secure collection and delivery services | RM6171      | lot2           |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User is displayed with "<lookingFor>" answer for the question "What type of service do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor                               | frameworkId | recommendation |
      | Scenario 1 | detection | Courier   | Asset recovery, disposal and destruction | RM6171      | lot6           |


