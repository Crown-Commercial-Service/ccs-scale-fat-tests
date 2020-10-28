Feature: GM Journey for FM2 framework (Technical and Security journey branch) -> See FM2 Updated schema from https://miro.com/app/board/o9J_kuCrpYQ=/ design link

  @TechnicalSecService1 @Regression @PreProd @Prod
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
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
      | ScenarioID | framework          | areaSuits         | secTypeRadio       | techSecurity                                   | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | Detection          | Security Services | Technical security | Risk assessments                               | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |
      | Scenario 2 | Technical security | Security Services | Technical security | Design and installation of electronic security | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |

  @TechnicalSecService12 @Regression @PreProd @Prod
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
      | ScenarioID | framework  | secTypeRadio       | techSecurity                                 | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | Monitoring | Technical security | Design and installation of physical security | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |
      | Scenario 2 | Intrusion  | Technical security | Anything else                                | RM6089      | 24/01/2023     | wpsfm2  | techlot1b      | 1    |


  @SecurityServices1 @Regression @PreProd @Prod
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
      | ScenarioID | framework | secTypeRadio      | secserviceAreaOpt             | addFacilities  | sectorRadio                                                | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | Emergency | Security services | Guarding services and patrols | Waste services | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 2  | cctv      | Security services | Alarm response centres                                                  | Statutory inspections and testing                    | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 3  | cctv      | Security services | Helpdesk services                                                       | Reception services_Waste services                    | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 4  | cctv      | Security services | Guarding services and patrols_Alarm response centres_Helpdesk services  | Reception services                                   | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 5  | cctv      | Security services | Security risk assessment                                                | Cleaning services                                    | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 6  | cctv      | Security services | Design of security systems                                              | Reception services_Statutory inspections and testing | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 7  | cctv      | Security services | Electronic security                                                     | Reception services                                   | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 8  | cctv      | Security services | Physical security                                                       | Cleaning services_Waste services                     | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 9  | cctv      | Security services | Physical security_ Alarm response centres                               | Catering services                                    | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |
#      | Scenario 10 | cctv      | Security services | Security risk assessment_Design of security systems_Electronic security | Reception services_Waste services                    | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3        | 1    |

  @SecurityServices2 @Regression @PreProd @Prod
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
      | ScenarioID | framework | secTypeRadio      | secserviceAreaOpt | addFacilities                                  | sectorRadio        | frameworkId | expirationDate | details    |
      | Scenario 1 | Guarding  | Security services | Helpdesk services | Grounds maintenance and horticultural services | Central Government | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2  | cctv      | Security services | Alarm response centres                            | Catering services                                                   | Education          | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3  | cctv      | Security services | Physical security                                 | Waste services                                                      | Central Government | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4  | cctv      | Security services | Security risk assessment                          | Statutory inspections and testing_Reception services_Waste services | Central Government | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 5  | cctv      | Security services | Electronic security                               | Statutory inspections and testing_Cleaning services_Waste services  | Central Government | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 6  | cctv      | Security services | Physical security_ Alarm response centres         | Statutory inspections and testing_Cleaning services                 | Central Government | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 7  | cctv      | Security services | Security risk assessment                          | Statutory inspections and testing_Reception services_Waste services | Central Government | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 8  | cctv      | Security services | Electronic security                               | Reception services                                                  | Central Government | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 9  | cctv      | Security services | Guarding services and patrols_Electronic security | Statutory inspections and testing_Reception services                | Central Government | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 10 | cctv      | Security services | Guarding services and patrols                     | Statutory inspections and testing_Catering services                 | Central Government | RM3830      | 09/07/2022     | fmmDetails |

  @SecurityServices3 @Regression @TechSecurityServices3
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
      | Scenario 2 | cctv      | Security services and technical security | Anything else     | RM6089      | 24/01/2023     | wpsfm2  | techlot1b_seclot1a | 2    |

  @SecurityServices4 @TechnicalSecurityServices4 @Regression @PreProd @Prod
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
      | ScenarioID | framework   | secTypeRadio      | secserviceAreaOpt             | addFacilities                | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | Key Holding | Security services | Guarding services and patrols | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
#      | Scenario 2 | cctv      | Security services | Alarm response centres        | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
#      | Scenario 3 | cctv      | Security services | Helpdesk services             | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |

  @TechSecurityServices1 @Regression @PreProd @Prod
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
      | ScenarioID | framework  | secTypeRadio                             | secserviceAreaOpt             | addFacilities        | sectorRadio                                                | frameworkId | expirationDate | details | recommendation   | lots |
      | Scenario 1 | Monitoring | Security services and technical security | Guarding services and patrols | Maintenance services | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot3_seclot1a | 2    |
#      | Scenario 2 | cctv      | Security services and technical security | Alarm response centres                          | Waste services                                 | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |
#      | Scenario 3 | cctv      | Security services and technical security | Helpdesk services                               | Statutory inspections and testing              | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |
#      | Scenario 4 | cctv      | Security services and technical security | Security risk assessment                        | Grounds maintenance and horticultural services | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |
#      | Scenario 5 | cctv      | Security services and technical security | Design of security systems                      | Catering services                              | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |
#      | Scenario 6 | cctv      | Security services and technical security | Electronic security                             | Reception services                             | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |
#      | Scenario 7 | cctv      | Security services and technical security | Physical security                               | Cleaning services_Waste services               | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |
#      | Scenario 8 | cctv      | Security services and technical security | Physical security_Guarding services and patrols | Cleaning services_Maintenance services         | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | wpsfm2  | seclot1a_seclot3 | 2    |

  @TechSecurityServices2 @Regression @PreProd @Prod
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
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
#      | Scenario 2 | cctv      |Security Services| Security services and technical security | Alarm response centres                     | Catering services                                                 | Devolved    | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |
#      | Scenario 3 | cctv      |Security Services |Security services and technical security | Helpdesk services                          | Statutory inspections and testing                                 | Blue light  | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |
#      | Scenario 4 | cctv      |Security Services |Security services and technical security | Security risk assessment                   | Maintenance services                                              | Education   | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |
#      | Scenario 5 | cctv      | Security Services|Security services and technical security | Design of security systems                 | Reception services                                                | Devolved    | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |
#      | Scenario 6 | cctv      | Security Services|Security services and technical security | Electronic security                        | Cleaning services                                                 | Health      | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |
#      | Scenario 7 | cctv      |Security Services |Security services and technical security | Physical security                          | Waste services                                                    | Blue light  | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |
#      | Scenario 8 | cctv      |Security Services |Security services and technical security | Helpdesk services_Physical security        | Reception services_Maintenance services                           | Housing     | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |
#      | Scenario 9 | cctv      |Security Services |Security services and technical security | Physical security_Security risk assessment | Reception services_Grounds maintenance and horticultural services | Charities   | RM3830_RM6089 | 09/07/2022_24/01/2023 | fmmDetails_wpsfm2 | seclot1a       | 1    | 2     |


  @SecurityServices4 @TechnicalSecurityServices4 @Regression
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
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt             | addFacilities                | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | cctv      | Security services and technical security | Alarm response centres        | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
      | Scenario 2 | cctv      | Security services and technical security | Helpdesk services             | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
      | Scenario 3 | cctv      | Security services and technical security | Guarding services and patrols | No, I have everything I need | RM6089      | 24/01/2023     | wpsfm2  | seclot1a       | 1    |
