Feature: GM Journey for FM2 framework -Housing journey branch

  @RM6089
  Scenario Outline:To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which type of housing services is required "<housingServices>"
    And User clicks on the "Continue" button
    Then User should be displayed with GM Escape page
    And User is displayed with "<areaSuits>" answer for the question "What type of housing do you need?"
    And User is displayed with "<housingServices>" answer for the question "What type of housing services do you need?"
    And User is displayed with initial search phrase from "<framework>"

    Examples:
      | ScenarioID | framework | areaSuits | housingServices |
      | Scenario 1 | housing   | Housing   | Estate services |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which type of housing services is required "<housingServices>"
    And User clicks on the "Continue" button
    And User selects what sector "<sector>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<areaSuits>" answer for the question "What type of housing do you need?"
    And User is displayed with "<housingServices>" answer for the question "What type of housing services do you need?"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits | housingServices                    | sector                                                     | frameworkId | expirationDate | details             | recommendation        | lots |
      | Scenario 1 | housing   | Housing   | Housing maintenance and management | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | fmMarketPlacePhase2 | fmtwolot2a_fmtwolot2b | 2    |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which services "<services>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects what sector "<sector>"are you buying for radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<areaSuits>" answer for the question "What type of housing do you need?"
    And User is displayed with "<services>" answer for the question "Which services do you need?"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits                  | services             | sector                                                     | frameworkId | expirationDate | details             | recommendation | lots |
      | Scenario 1 | housing   | Facilities Management (FM) | Maintenance services | Ministry of Defence or defence infrastructure organisation | RM6089      | 24/01/2023     | fmMarketPlacePhase2 | fmtwolot3      | 1    |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which services "<services>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<housingAns>" answer for the question "What type of housing do you need?"
    And User is displayed with "<services>" answer for the question "Which services do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | areaSuits                  | housingAns                 | services          | frameworkId   | expirationDate        | details                             |
      | Scenario 1 | housing   | Facilities Management (FM) | Facilities Management (FM) | Cleaning services | RM3830_RM6130 | 09/07/2022_25/02/2024 | fmmDetails_buildingCleaningServices |

   #housing, Facilities -> Services: Anything else
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which services "<services>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with GM Escape page
    And User is displayed with "<housingAns>" answer for the question "What type of housing do you need?"
    And User is displayed with "<services>" answer for the question "Which services do you need?"
    And User is displayed with initial search phrase from "<framework>"

    Examples:
      | ScenarioID | framework | areaSuits                  | housingAns                 | services      |
      | Scenario 1 | housing   | Facilities Management (FM) | Facilities Management (FM) | Anything else |