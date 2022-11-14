Feature: GM Journey for FM2 framework Technical and Security journey branch

  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which technical security "<techSecurity>" is needed radio button
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<techSecurity>" answer for the question "What type of technical security do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework          | areaSuits         | secTypeRadio       | techSecurity                                   | frameworkId | recommendation |
      | Scenario 1 | Technical security | Security Services | Technical security | Design and installation of electronic security | RM6089      | techlot1b      |

  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which technical security "<techSecurity>" is needed radio button
    And User clicks on the "Continue" button
    Then User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<techSecurity>" answer for the question "What type of technical security do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio       | techSecurity  | frameworkId | recommendation |
      | Scenario 1 | Intrusion | Security Services | Technical security | Anything else | RM6089      | techlot1b      |

  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security services do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio      | secserviceAreaOpt             | addFacilities  | sectorRadio                                                | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | Emergency | Security Services | Security services | Guarding services and patrols | Waste services | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |

  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security services do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio      | secserviceAreaOpt | addFacilities                                  | sectorRadio        | frameworkId | expirationDate | details    |
      | Scenario 1 | Guarding  | Security Services | Security services | Helpdesk services | Grounds maintenance and horticultural services | Central Government | RM3830      | 09/04/2023     | fmmDetails |

  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security services do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio      | secserviceAreaOpt | frameworkId | expirationDate | details | recommendation     | lots |
      | Scenario 1 | cctv      | Security Services | Security services | Anything else     | RM6089      | 24/01/2023     | wpsfm2  | techlot1b_seclot1a | 2    |

  @SecurityServices4 @TechnicalSecurityServices4 @Regression @PreProd @Prod
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security services do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework   | areaSuits         | secTypeRadio      | secserviceAreaOpt             | addFacilities                | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | Key Holding | Security Services | Security services | Guarding services and patrols | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |

  @TechSecurityServices1 @Regression @PreProd @Prod @error
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects additional services "<addFacilities>" required outside of tech services
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security services do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio                             | secserviceAreaOpt      | addFacilities  | sectorRadio                                                | frameworkId | expirationDate | details | recommendation   | lots |
      | Scenario 2 | cctv      | Security Services | Security services and technical security | Alarm response centres | Waste services | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3_seclot1a | 2    |

  @TechSecurityServices2 @Regression @PreProd @Prod @error
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User select which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects additional services "<addFacilities>" required outside of tech services
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId><recommendation>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation> <order>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security services do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework           | areaSuits         | secTypeRadio                             | secserviceAreaOpt             | addFacilities                                  | sectorRadio | frameworkId   | expirationDate        | details           | recommendation | lots | order |
      | Scenario 1 | Security consultant | Security Services | Security services and technical security | Guarding services and patrols | Grounds maintenance and horticultural services | Charities   | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |

  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security services do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits         | secTypeRadio      | secserviceAreaOpt      | addFacilities                | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | cctv      | Security Services | Security services | Alarm response centres | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
