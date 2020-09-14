Feature: GM Journey for Facility management framework(Technical Security Journeys) -> See FM2 Updated schema from https://miro.com/app/board/o9J_kuCrpYQ=/ design link

  @TechnicalSecServiceTest
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which technical security "<techSecurity>" is needed radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<techSecurity>" answer for the question "What type of technical security do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio       | techSecurity                                   | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | cctv      | Technical security | Risk assessments                               | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |
      | Scenario 2 | cctv      | Technical security | Design and installation of electronic security | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |
      | Scenario 3 | cctv      | Technical security | Design and installation of physical security   | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |
      | Scenario 4 | cctv      | Technical security | Anything else                                  | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |


  @TechnicalSecServices1
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects which technical security "<techSecurity>" is needed radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security services do you need?"
    And User is displayed with "<techSecurity>" answer for the question "What type of technical security do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt                                   | techSecurity                                   | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | cctv      | Security services                        | Design of security systems_Security risk assessment | Risk assessments                               | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |
      | Scenario 2 | cctv      | Security services                        | Electronic security_Physical security               | Design and installation of electronic security | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |
      | Scenario 3 | cctv      | Security services and technical security | Design of security systems_Physical security        | Design and installation of physical security   | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |
      | Scenario 4 | cctv      | Security services and technical security | Electronic security_Security risk assessment        | Anything else                                  | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |

  @SecurityServices1
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
#    And  User selects additional services "<addServiceRadio>" required outside of tech services
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
      | ScenarioID | framework | secTypeRadio      | secserviceAreaOpt             | addFacilities                     | sectorRadio                                                | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | cctv      | Security services | Guarding services and patrols | Waste services                    | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
      | Scenario 2 | cctv      | Security services | Alarm response centres        | Statutory inspections and testing | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
      | Scenario 3 | cctv      | Security services | Helpdesk services             | Reception services                | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |

  @SecurityServices2
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects additional services "<addFacilities>" required outside of tech services
#    And User selects which services "<addFacilities>" required multi choice checkboxes
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
      | ScenarioID | framework | secTypeRadio      | secserviceAreaOpt             | addFacilities                                  | sectorRadio        | frameworkId | expirationDate | details    |
      | Scenario 1 | cctv      | Security services | Helpdesk services             | Grounds maintenance and horticultural services | Central Government | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 2 | cctv      | Security services | Alarm response centres        | Catering services                              | Education          | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 3 | cctv      | Security services | Guarding services and patrols | Statutory inspections and testing              | Central Government | RM3830      | 09/07/2022     | fmmDetails |

  @SecurityServices3 @TechSecurityServices3
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
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
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt | frameworkId | expirationDate | details | recommendation     | lots |
      | Scenario 1 | cctv      | Security services                        | Anything else     | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_techlot1b | 2    |
      | Scenario 2 | cctv      | Security services and technical security | Anything else     | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_techlot1b | 2    |

  @SecurityServices4 @TechnicalSecurityServices4
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    #    And  User selects additional services "<addServiceRadio>" required outside of tech services
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
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt             | addFacilities                | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | cctv      | Security services                        | Guarding services and patrols | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
      | Scenario 2 | cctv      | Security services                        | Alarm response centres        | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
      | Scenario 3 | cctv      | Security services                        | Helpdesk services             | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
      | Scenario 4 | cctv      | Security services and technical security | Alarm response centres        | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
      | Scenario 5 | cctv      | Security services and technical security | Helpdesk services             | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
      | Scenario 6 | cctv      | Security services and technical security | Guarding services and patrols | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |

  @TechSecurityServices1
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects additional services "<addFacilities>" required outside of tech services
#    And User selects which services "<addFacilities>" required multi choice checkboxes
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
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt | addFacilities     | sectorRadio                                                | frameworkId | expirationDate | details | recommendation   | lots |
#      | Scenario 1 | cctv      | Security services and technical security | Guarding services and patrols | Maintenance services | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |
#      | Scenario 2 | cctv      | Security services and technical security | Alarm response centres        | Cleaning services    | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |
      | Scenario 3 | cctv      | Security services and technical security | Helpdesk services | Cleaning services | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |

  @TechSecurityServices2
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects additional services "<addFacilities>" required outside of tech services
#    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
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
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt | addFacilities                                  | sectorRadio | frameworkId   | expirationDate        | details | recommendation | lots | order |
      | Scenario 1 | cctv      | Security services and technical security | Helpdesk services | Grounds maintenance and horticultural services | Charities   | RM3830_RM6089 | 09/07/2022_24/01/2023 | wpsfm2  | seclot1a       | 1    | 2     |
#      | Scenario 2 | cctv      | Security services and technical security | Alarm response centres | Catering services                              | Devolved    | RM3830_RM6089 | 09/07/2022_24/01/2023     | wpsfm2  | seclot1a       | 1    |2|
#      | Scenario 3 | cctv      | Security services and technical security | Helpdesk services      | Statutory inspections and testing              | Blue light  | RM3830_RM6089 | 09/07/2022_24/01/2023     | wpsfm2  | seclot1a       | 1    |2|
#      | Scenario 4 | cctv      | Security services and technical security | Guarding services and patrols | Reception services                             | Housing     | RM3830_RM6089 | 09/07/2022_24/01/2023     | wpsfm2  | seclot1a       | 1    |2|


