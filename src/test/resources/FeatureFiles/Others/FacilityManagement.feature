Feature: GM Journey for Facility management framework


  @Facility1
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    Examples:
      | ScenarioID | framework | serviceArea       | frameworkId                        | lots | recommendation | expirationDate        | details |
      | Scenario 1 | Facility  | Cleaning services | FM1 - RM3830, Cleaning DPS, RM6130 |      |                | 09/07/2022,25/02/2024 |         |

  @Facility2
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    Examples:
      | ScenarioID | framework | serviceArea          | sectorRadio         | frameworkId  | lots      | recommendation | expirationDate | details |
      | Scenario 1 | Facility  | Maintenance services | Ministry of Defence | FM2 - RM6089 | Lot 2a,2b |                |                |         |
      | Scenario 2 | Facility  | Maintenance services | Central government  | FM1 - RM3830 | Lot 2c    |                |                |         |
      | Scenario 3 | Facility  | Maintenance services | Education           | FM1 - RM3830 | Lot 2c    |                |                |         |
      | Scenario 4 | Facility  | Maintenance services | Devolved            | FM1 - RM3830 | Lot 2c    |                |                |         |
      | Scenario 5 | Facility  | Maintenance services | Health              | FM1 - RM3830 | Lot 2c    |                |                |         |
      | Scenario 6 | Facility  | Maintenance services | Blue light          | FM1 - RM3830 | Lot 2c    |                |                |         |
      | Scenario 7 | Facility  | Maintenance services | Housing             | FM1 - RM3830 | Lot 2c    |                |                |         |
      | Scenario 8 | Facility  | Maintenance services | Charities           | FM1 - RM3830 | Lot 2c    |                |                |         |

  @Facility3
  Scenario Outline:To verify Buyer has initiated GM journey for framework "<framework>" and is taken GM escape page after selecting the service areas as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User should be displayed with GM Escape page
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"

    Examples:
      | ScenarioID | framework | serviceArea   |
      | Scenario 1 | Facility  | Anything Else |

  @Security1 @SecurityandTechnicalServices1
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects multiple service areas "<serviceAreaOpt>", with additional facilities as "<addServiceRadio>" and Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects additional services "<addServiceRadio>" required outside of tech services
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security service do you need?"
    And User is displayed with "<addServiceRadio>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt                                   | addServiceRadio              | frameworkId | lots  | recommendation | expirationDate | details |
      | Scenario 1 | Security  | Security services                        | Guarding services and patrols                       | No, I have everything I need | RM6089      | lot1a |                | 24/01/2023     |         |
      | Scenario 2 | Security  | Security services                        | Alarm response centres                              | No, I have everything I need | RM6089      | lot1a |                | 24/01/2023     |         |
      | Scenario 3 | Security  | Security services                        | Helpdesk services                                   | No, I have everything I need | RM6089      | lot1a |                | 24/01/2023     |         |
      | Scenario 4 | Security  | Security services                        | Security risk assessment_Design of security systems | No, I have everything I need | RM6089      | lot1a |                | 24/01/2023     |         |
      | Scenario 5 | Security  | Security services and technical security | Design of security systems_Electronic security      | No, I have everything I need | RM6089      | lot1a |                | 24/01/2023     |         |
      | Scenario 6 | Security  | Security services and technical security | Electronic security_Physical security               | No, I have everything I need | RM6089      | lot1a |                | 24/01/2023     |         |
      | Scenario 7 | Security  | Security services and technical security | Physical security_Electronic security               | No, I have everything I need | RM6089      | lot1a |                | 24/01/2023     |         |

  @Security2 @SecurityandTechnicalServices2
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects multiple service areas "<serviceAreaOpt>", with additional facilities as "<addServiceRadio>" and Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects additional services "<addServiceRadio>" required outside of tech services
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<secserviceAreaOpt>" answer for the question "What type of security service do you need?"
    And User is displayed with "<addServiceRadio>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio      | secserviceAreaOpt             | addServiceRadio                                | sectorRadio                                                | frameworkId         | lots          | recommendation | expirationDate        | details |
      | Scenario 1 | Security  | Security services | Guarding services and patrols | Maintenance services                           | Ministry of Defence or defence infrastructure organisation | FM2 - RM6089        | lot 3, lot 1a |                | 24/01/2023            |         |
      | Scenario 2 | Security  | Security services | Alarm response centres        | Grounds maintenance and horticultural services | Central government                                         | FM1 - RM3830,RM6089 | lot1a         |                | 09/07/2022,24/01/2023 |         |
      | Scenario 3 | Security  | Security services | Helpdesk services             | Statutory inspections and testing              | Education                                                  | FM1 - RM3830,RM6089 | lot1a         |                | 09/07/2022,24/01/2023 |         |
      | Scenario 4 | Facility  | Security services | Security risk assessment      | Catering services                              | Devolved                                                   | FM1 - RM3830,RM6089 | lot1a         |                | 09/07/2022,24/01/2023 |         |
      | Scenario 5 | Facility  | Security services | Design of security systems    | Cleaning services                              | Health                                                     | FM1 - RM3830,RM6089 | lot1a         |                | 09/07/2022,24/01/2023 |         |
      | Scenario 6 | Facility  | Security services | Electronic security           | Reception services                             | Blue light                                                 | FM1 - RM3830,RM6089 | lot1a         |                | 09/07/2022,24/01/2023 |         |
      | Scenario 7 | Facility  | Security services | Physical security             | Waste services                                 | Housing                                                    | FM1 - RM3830,RM6089 | lot1a         |                | 09/07/2022,24/01/2023 |         |
      | Scenario 8 | Facility  | Security services | Helpdesk services             | Grounds maintenance and horticultural service  | Charities                                                  | FM1 - RM3830,RM6089 | lot1a         |                | 09/07/2022,24/01/2023 |         |


  @TechnicalService1
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>" and which technical services "<techserviceAreaOpt>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which technical services "<techserviceAreaOpt>" is needed radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<techserviceAreaOpt>" answer for the question "What type of technical security do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio       | techserviceAreaOpt                             | frameworkId  | lots   | recommendation | expirationDate | details |
      | Scenario 1 | Security  | Technical Security | Risk assessments                               | FM2 - RM6089 | lot 1b |                | 24/01/2023     |         |
      | Scenario 2 | Security  | Technical Security | Design and installation of electronic security | FM2 - RM6089 | lot 1b |                | 24/01/2023     |         |
      | Scenario 3 | Security  | Technical Security | Design and installation of physical security   | FM2 - RM6089 | lot 1b |                | 24/01/2023     |         |
      | Scenario 4 | Security  | Technical Security | Anything else                                  | FM2 - RM6089 | lot 1b |                | 24/01/2023     |         |

  @HousingService1
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>",which housing services "<housingservice>" and Sector buying as "<sectorRadio>" during the journey during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which housing services "<housingservice>" is needed radio button
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<housingservice>" answer for the question "What type of housing services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio | housingservice                     | sectorRadio                                                | frameworkId  | lots      | recommendation | expirationDate | details |
      | Scenario 1 | Security  | Housing      | Housing management and maintenance | Ministry of Defence or defence infrastructure organisation | FM2 - RM6089 | lot 2a,2b |                | 24/01/2023     |         |
      | Scenario 2 | Security  | Housing      | Housing management and maintenance | Central government                                         | FM2 - RM6089 | lot 2c    |                | 24/01/2023     |         |
      | Scenario 3 | Security  | Housing      | Housing management and maintenance | Education                                                  | FM2 - RM6089 | lot 2c    |                | 24/01/2023     |         |
      | Scenario 4 | Security  | Housing      | Housing management and maintenance | Devolved                                                   | FM2 - RM6089 | lot 2c    |                | 24/01/2023     |         |
      | Scenario 5 | Security  | Housing      | Housing management and maintenance | Health                                                     | FM2 - RM6089 | lot 2c    |                | 24/01/2023     |         |
      | Scenario 6 | Security  | Housing      | Housing management and maintenance | Blue Light                                                 | FM2 - RM6089 | lot 2c    |                | 24/01/2023     |         |
      | Scenario 7 | Security  | Housing      | Housing management and maintenance | Housing                                                    | FM2 - RM6089 | lot 2c    |                | 24/01/2023     |         |
      | Scenario 8 | Security  | Housing      | Housing management and maintenance | Charities                                                  | FM2 - RM6089 | lot 2c    |                | 24/01/2023     |         |

  @HousingService2
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" and is taken GM escape page after selecting what type of security "<secTypeRadio>" and which housing services "<housingservice>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which housing services "<housingservice>" is needed radio button
    And User clicks on the "Continue" button
    Then User should be displayed with GM Escape page
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<housingservice>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"

    Examples:
      | ScenarioID | framework | secTypeRadio     | housingservice  |
      | Scenario 1 | Facility  | Housing Security | Estate services |

  @SecuritySoftware1
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question by selecting what type of security "<secTypeRadio>", looking for "<lookingFor>", selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which services "<serviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
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
      | ScenarioID | framework | secTypeRadio      | lookingFor                | serviceAreaOpt                      | sectorRadio | frameworkId | expirationDate | details             | recommendation | lots |
      | Scenario 1 | Security  | Security services | Both, product and service | Hardware and software ICT solutions | Devolved    | RM6068      | 12/09/2021     | techBothTechDetails | tech-both-lot1 | 1    |

  @Facility4
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" by clicking on Start over to change your answer on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects multiple service areas "<serviceAreaOpt>", Sector buying as "<sectorRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    And User clicks on the "Start over to change your answers" link
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    Examples:
      | ScenarioID | framework | serviceArea          | sectorRadio         | frameworkId  | lots  | recommendation | expirationDate | details |
      | Scenario 1 | Facility  | Maintenance services | Ministry of Defence | FM2 - RM6089 | Lot 3 |                | 24/01/2023     |         |

  @HousingService3
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" by clicking on change answer on GM results page after initiating GM journey for framework "<framework>" and answering different set of question as selects type of security "<secTypeRadio>",which housing services "<housingservice>" and Sector buying as "<sectorRadio>" during the journey during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And  User selects what type of security "<secTypeRadio>" is needed radio button
    And  User clicks on the "Continue" button
    And User selects which housing services "<housingservice>" is needed radio button
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<housingservice>" answer for the question "What type of housing services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    And User clicks on the Change button adjacent to question "What type of housing services do you need?"
    And User selects which housing services "<housingservice>" is needed radio button
    And User clicks on the "Continue" button
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<secTypeRadio>" answer for the question "What type of security do you need?"
    And User is displayed with "<housingservice>" answer for the question "What type of housing services do you need?"
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | secTypeRadio     | housingservice                     | sectorRadio                                                | frameworkId  | lots      | recommendation | expirationDate | details |
      | Scenario 1 | Security  | Housing Security | Housing management and maintenance | Ministry of Defence or defence infrastructure organisation | FM2 - RM6089 | lot 2a,2b |                | 24/01/2023     |         |



#  secTypeRadio - Security Services , Technical Security , Security Software
#  domainRadio - Housing , Security , Facilities
#  secTypeRadio - Security Services , Security Services & Tech , Technical
#  serviceAreaOpt-Housing,Catering,Cleaning,Computer aided facility management (CAFM),Contract management,Contract mobilisation,Helpdesk,Horticultural,Maintenance,Management of billable works and projects,Miscellaneous facility management services,Reception,Security,Statutory obligations,Waste,Workplace facility management services,Any other facilities management service

#  MOD sectors :
#  Non MOD sectors :

#  Facility services : Maintenance services,Grounds maintenance and horticultural services,Statutory inspections and testing,Catering services,Cleaning services,Reception services,Security and guarding services,Waste services,Computer Aided Facility Management (CAFM) and helpdesk provision,or Anything else
# Facility sectors : Ministry of Defence or defence infrastructure organisation,Central government,Education,Devolved,Health,Blue light,Housing,Charities
#Security type : Security services,Technical security,Security services and technical security,Security software
#  Securityservicetypes : Guarding services and patrols,Alarm response centres,Helpdesk services,Security risk assessment,Design of security systems,Electronic security,Physical security
#  FM related : Security -> Security Services -> addservices: Yes -> MOD --> FM2 RM6089 lOT3
#  FM related : Security -> Security Services -> addservices: Yes -> Non-MOD --> FM1 RM3830
#  FM related : Security -> Security Services -> addservices: No --> FM2 RM6089 lOT 1a
#  FM related : Security -> Security Services &Tech -> addFMservices: Yes -> MOD --> FM2 RM6089 LOT3 & FM2 RM6089 lOT 1a
#  FM related : Security -> Security Services &Tech -> addFMservices: Yes -> Non-MOD --> FM2 RM3830 & FM2 RM6089 lOT 1a
#  FM related : Security -> Security Services &Tech -> addFMservices: No --> FM2 RM6089 lOT 1a
#  FM related : Security -> Technical -> Tech service selected --> FM2 RM6089 LOT 1b
#  FM Related : Housing  -> Estates --> End of journeys , No agreements on Scale
#  FM Related : Housing  -> Housing Management & Maintenance -> MOD -> FM2 RM6089 LOT 2a & FM2 RM6089 lOT 2b
#  FM Related : Housing  -> Housing Management & Maintenance -> MOD -> FM2 RM6089 LOT 2c
#  FM Related : Faclities  -> cleaning services -> FM1 RM3830 Cleaning DPS
#  FM Related : Faclities  -> Other services -> GM Escape Page
#  FM Related : Faclities  -> List of services from FM -> MOD -> FM2 RM6089 lot3
#  FM Related : Faclities  -> List of services from FM -> Non MOD -> FM1 RM3830
