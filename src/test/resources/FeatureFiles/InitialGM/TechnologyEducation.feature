@RM6147 @RM6103 @RM3808 @RM6068
Feature: GM Journey for Technology /Education Technology framework

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits  | lookingFor | sectorRadio        | frameworkId | recommendation |
      | Scenario 1 | laptop    | Technology | Product    | Central Government | RM6147      | lot1           |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits  | lookingFor | serviceArea                    | sectorRadio | frameworkId | recommendation |
      | Scenario 1 | laptop    | Technology | Service    | Broadband fibre infrastructure | Education   | RM6103      | lot2-tech      |
      | Scenario 2 | laptop    | Technology | Service    | Broadband service              | Education   | RM6103      | lot3-tech      |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | areaSuits  | lookingFor | serviceArea                    | sectorRadio                                                | frameworkId |
      | Scenario 1 | laptop    | Technology | Service    | Broadband fibre infrastructure | Local Government                                           | RM3808      |
      | Scenario 2 | laptop    | Technology | Service    | Broadband service              | Ministry of Defence or defence infrastructure organisation | RM3808      |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
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
      | ScenarioID | framework | areaSuits  | lookingFor | serviceArea                            | frameworkId | expirationDate | details            |
      | Scenario 1 | laptop    | Technology | Service    | Technology strategy and service design | RM6100      | 15/06/2025     | techSerTechDetails |
      | Scenario 2 | laptop    | Technology | Service    | Transition and transformation          | RM6100      | 15/06/2025     | techSerTechDetails |
  @InitialGM
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits  | lookingFor                | serviceAreaOpt               | frameworkId | recommendation |
      | Scenario 1 | laptop    | Technology | Both, product and service | Information assured services | RM6068      | tech-both-lot4 |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits  | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | expirationDate | details                 | recommendation     | lots |
      | Scenario 1 | laptop    | Technology | Both, product and service | Hardware and software ICT solutions | Devolved    | RM6068      | 09/12/2023     | techBothTechDetailsInfo | tech-both-lot1     | 1    |
      | Scenario 2 | laptop    | Technology | Both, product and service | Hardware and software ICT solutions | Education   | RM6103      | 09/06/2023     | techProdEduDetails      | tech-both-edu-lot1 | 1    |
      | Scenario 3 | laptop    | Technology | Both, product and service | Audio-visual (AV)                   | Health      | RM6068      | 09/12/2023     | techBothTechDetailsInfo | tech-both-lot2     | 1    |
      | Scenario 4 | laptop    | Technology | Both, product and service | Audio-visual (AV)                   | Education   | RM6103      | 09/06/2023     | techProdEduDetails      | tech-both-edu-lot5 | 1    |
      | Scenario 5 | laptop    | Technology | Both, product and service | Hardware                            | Blue light  | RM6068      | 09/12/2023     | techBothTechDetailsInfo | tech-both-lot2     | 1    |
      | Scenario 6 | laptop    | Technology | Both, product and service | Hardware                            | Education   | RM6103      | 09/06/2023     | techProdEduDetails      | tech-both-edu-lot4 | 1    |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
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
      | ScenarioID | framework | areaSuits  | lookingFor                | serviceAreaOpt | sectorRadio | frameworkId | expirationDate | details                 |
      | Scenario 1 | laptop    | Technology | Both, product and service | Anything else  | Charities   | RM6068      | 09/12/2023     | techBothTechDetailsInfo |
      | Scenario 2 | laptop    | Technology | Both, product and service | Anything else  | Education   | RM6103      | 09/06/2023     | techProdEduDetails      |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" and user clicks on Change answers during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    And User clicks on the Change button adjacent to question "Which services do you need?"
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits  | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | recommendation |
      | Scenario 1 | laptop    | Technology | Both, product and service | Hardware and software ICT solutions | Charities   | RM6068      | tech-both-lot1 |


  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" and and Buyer clicks on "Start over to change your answers" link during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    And User clicks on the "Start again to change your answers" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceAreaOpt>" answer for the question "Which services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits  | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | recommendation     |
      | Scenario 1 | laptop    | Technology | Both, product and service | Hardware and software ICT solutions | Education   | RM6103      | tech-both-edu-lot1 |