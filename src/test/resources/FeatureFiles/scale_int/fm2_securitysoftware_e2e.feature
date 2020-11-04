Feature: GM Journey for FM2 framework (Secuirty Software journey branch) -> See FM2 Updated schema from https://miro.com/app/board/o9J_kuCrpYQ=/ design link

  @SecuritySoftware1 @SFC1050
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question by selecting what type of security "<secTypeRadio>", looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio      | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | expirationDate | details                 | recommendation | lots |
      | Scenario 1 | cctv      | Security software | Both, product and service | Hardware and software ICT solutions | Devolved    | RM6068      | 09/12/2021     | techBothTechDetailsInfo | tech-both-lot1 | 1    |

  @SecuritySoftware2 @SFC1050
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio      | lookingFor | sectorRadio | frameworkId | expirationDate | details            | recommendation | lots |
      | Scenario 1 | cctv      | Security software | Product    | Education   | RM6103      | 10/06/2022     | techProdEduDetails | lot5_lot4      | 2    |

  @SecuritySoftware3 @TechnicalSecServiceTest1122 @PreProdSC @ProdSC @SFC1050
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio      | lookingFor | serviceArea                    | sectorRadio | frameworkId | expirationDate | details           | recommendation | lots |
      | Scenario 1 | cctv      | Security software | Service    | Broadband fibre infrastructure | Education   | RM6103      | 10/06/2022     | techSerEduDetails | lot2-tech      | 1    |
