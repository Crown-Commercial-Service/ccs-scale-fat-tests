Feature: GM Journey for FM2 framework-Security Software journey branch
  @RM6068 @RM6103
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question by selecting what type of security "<secTypeRadio>", looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio      | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | recommendation |
      | Scenario 1 | cctv      | Security Services | Security software | Both, product and service | Hardware and software ICT solutions | Devolved    | RM6068      | tech-both-lot1 |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio      | lookingFor | sectorRadio | frameworkId | recommendation |
      | Scenario 1 | cctv      | Security Services | Security software | Product    | Education   | RM6103      | lot4_lot5      |


  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio      | lookingFor | serviceArea                    | sectorRadio | frameworkId | recommendation |
      | Scenario 1 | cctv      | Security Services | Security software | Service    | Broadband fibre infrastructure | Education   | RM6103      | lot2-tech      |
