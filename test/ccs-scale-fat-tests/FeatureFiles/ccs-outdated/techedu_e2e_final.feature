Feature: GM Journey for Tech /EduTech framework

  @EduTech1 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
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
      | ScenarioID | framework | lookingFor | sectorRadio        | frameworkId | expirationDate | details               | recommendation | lots |
      | Scenario 1 | laptop    | Product    | Education          | RM6103      | 10/06/2022     | techProdEduDetails    | lot5_lot4      | 2    |
      | Scenario 2 | laptop    | Product    | Central Government | RM3733      | 31/10/2021     | techProdNonEduDetails | lot6           | 1    |

  @EduTech22 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
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
      | ScenarioID | framework | lookingFor | serviceArea                    | sectorRadio | frameworkId | expirationDate | details           | recommendation | lots |
      | Scenario 1 | laptop    | Service    | Broadband fibre infrastructure | Education   | RM6103      | 10/06/2022     | techSerEduDetails | lot2-tech      | 1    |
      | Scenario 2 | laptop    | Service    | Broadband service              | Education   | RM6103      | 10/06/2022     | techSerEduDetails | lot3-tech      | 1    |


  @EduTech23 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | serviceArea                    | sectorRadio                                                | frameworkId | expirationDate | details              |
      | Scenario 1 | laptop    | Service    | Broadband fibre infrastructure | Local Government                                           | RM3808      | 16/08/2022     | techSerNonEduDetails |
      | Scenario 2 | laptop    | Service    | Broadband service              | Ministry of Defence or defence infrastructure organisation | RM3808      | 16/08/2022     | techSerNonEduDetails |

  @EduTech3 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | serviceArea                            | frameworkId | expirationDate | details            |
      | Scenario 1 | laptop    | Service    | Technology strategy and service design | RM3804      | 05/09/2021     | techSerTechDetails |
      | Scenario 2 | laptop    | Service    | Transition and transformation          | RM3804      | 05/09/2021     | techSerTechDetails |
#
  @EduTech41 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | lookingFor                | serviceAreaOpt               | frameworkId | expirationDate | details                 | recommendation | lots |
      | Scenario 1 | laptop    | Both, product and service | Information assured services | RM6068      | 09/12/2021     | techBothTechDetailsInfo | tech-both-lot4 | 1    |
      | Scenario 2 | laptop    | Both, product and service | Software                     | RM6068      | 09/12/2021     | techBothTechDetailsInfo | tech-both-lot3 | 1    |


  @EduTech42 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
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
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | expirationDate | details                 | recommendation     | lots |
      | Scenario 1 | laptop    | Both, product and service | Hardware and software ICT solutions | Devolved    | RM6068      | 09/12/2021     | techBothTechDetailsInfo | tech-both-lot1     | 1    |
      | Scenario 2 | laptop    | Both, product and service | Hardware and software ICT solutions | Education   | RM6103      | 10/06/2022     | techProdEduDetails      | tech-both-edu-lot1 | 1    |
      | Scenario 3 | laptop    | Both, product and service | Audio-visual (AV)                   | Health      | RM6068      | 09/12/2021     | techBothTechDetailsInfo | tech-both-lot2     | 1    |
      | Scenario 4 | laptop    | Both, product and service | Audio-visual (AV)                   | Education   | RM6103      | 10/06/2022     | techProdEduDetails      | tech-both-edu-lot5 | 1    |
      | Scenario 5 | laptop    | Both, product and service | Hardware                            | Blue light  | RM6068      | 09/12/2021     | techBothTechDetailsInfo | tech-both-lot2     | 1    |
      | Scenario 6 | laptop    | Both, product and service | Hardware                            | Education   | RM6103      | 10/06/2022     | techProdEduDetails      | tech-both-edu-lot4 | 1    |

  @EduTech5 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"
    Examples:
      | ScenarioID | framework | lookingFor                | serviceAreaOpt | sectorRadio | frameworkId | expirationDate | details                 |
      | Scenario 1 | laptop    | Both, product and service | Anything else  | Charities   | RM6068      | 09/12/2021     | techBothTechDetailsInfo |
      | Scenario 2 | laptop    | Both, product and service | Anything else  | Education   | RM6103      | 10/06/2022     | techProdEduDetails      |


  @EduTech6 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" and user clicks on Change answers during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
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
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    And User clicks on the Change button adjacent to question "Which services do you need?"
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | expirationDate | details                 | recommendation | lots |
      | Scenario 1 | laptop    | Both, product and service | Hardware and software ICT solutions | Charities   | RM6068      | 09/12/2021     | techBothTechDetailsInfo | tech-both-lot1 | 1    |

  @EduTech7 @IntTechEduTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" and and Buyer clicks on "Start over to change your answers" link during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
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
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    And User clicks on the "Start again to change your answers" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | expirationDate | details            | recommendation     | lots |
      | Scenario 1 | laptop    | Both, product and service | Hardware and software ICT solutions | Education   | RM6103      | 10/06/2022     | techProdEduDetails | tech-both-edu-lot1 | 1    |


