Feature: GM Journey for Legal framework -> See Linen schema from https://miro.com/app/board/o9J_kuCrpYQ=/ design link

  @legalAdvice1 @Legal_Regression @LegalFinalTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects what type "<service>" do you need radio button
    And User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<service>" answer for the question "What type of legal service do you need?"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID  | framework                     | service | sector             | serviceArea                                  | frameworkId   | expirationDate        | details                             |
      | Scenario 1  | Rail Legal Services           | Legal   | Central Government | Rail                                         | RM3756        | 31/03/2022            | railLegalDetails                    |
      | Scenario 2  | construction                  | Legal   | Central Government | eDisclosure                                  | RM3717        | 01/06/2021            | edisclosureServicesDetails          |
      | Scenario 3  | contract                      | Legal   | Central Government | eDiscovery                                   | RM3717        | 01/06/2021            | edisclosureServicesDetails          |
      | Scenario 4  | DPS                           | Legal   | Central Government | eDisclosure_eDiscovery                       | RM3717        | 01/06/2021            | edisclosureServicesDetails          |
      | Scenario 5  | finance                       | Legal   | Central Government | Costs lawyer                                 | RM6137        | 18/08/2022            | costLawyerDetails                   |
      | Scenario 6  | general legal                 | Legal   | Central Government | Legal costs draftman                         | RM6137        | 18/08/2022            | costLawyerDetails                   |
      | Scenario 7  | General Legal Advice Services | Legal   | Central Government | Costs lawyer_Legal costs draftman            | RM6137        | 18/08/2022            | costLawyerDetails                   |
      | Scenario 8  | government legal advisory     | Legal   | Central Government | Finance and complex                          | RM3786_RM3787 | 27/12/2021_20/12/2021 | GLAS_financeAndComplexLegalServices |
      | Scenario 9  | Interims                      | Legal   | Central Government | Anything else                                | RM3786_RM3787 | 27/12/2021_20/12/2021 | GLAS_financeAndComplexLegalServices |
      | Scenario 10 | IP Exploitation               | Legal   | Central Government | Rail_eDisclosure                             | RM3786_RM3787 | 27/12/2021_20/12/2021 | GLAS_financeAndComplexLegalServices |
      | Scenario 11 | land                          | Legal   | Central Government | Costs lawyer_Legal costs draftman_eDiscovery | RM3786_RM3787 | 27/12/2021_20/12/2021 | GLAS_financeAndComplexLegalServices |

    #sector= Central Government, service Area leads budget question with answer no/not sure
  @legalAdvice2 @Legal_Regression @LegalFinalTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey Given User logs in to the CCS application for "<ScenarioID>"
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects which sector are you looking for "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId><recommendation>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation> <order>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework    | sector             | serviceArea           | budgetRadio | frameworkId   | expirationDate        | details               | recommendation | lots | order |
      | Scenario 1 | lega         | Central Government | Employment litigation | No          | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |
      | Scenario 2 | legal        | Central Government | Litigation            | No          | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |
      | Scenario 3 | legal advice | Central Government | Property              | No          | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |

    #sector= Central Government, service Area leads budget question with answer >20k
  @legalAdvice3 @Legal_Regression @LegalFinalTest
  Scenario Outline: To verify Buyer has provided with different service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects what type "<service>" do you need radio button
    And User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<service>" answer for the question "What type of legal service do you need?"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework             | service | sector             | serviceArea           | budgetRadio | enterBudgets | frameworkId | expirationDate | details |
      | Scenario 1 | legal advice services | Legal   | Central Government | Employment litigation | Yes         | 20000        | RM3786      | 27/12/2021     | GLAS    |
      | Scenario 2 | legal case            | Legal   | Central Government | Litigation            | Yes         | 35000        | RM3786      | 27/12/2021     | GLAS    |
      | Scenario 3 | legal service         | Legal   | Central Government | Property              | Yes         | 20001        | RM3786      | 27/12/2021     | GLAS    |

   #sector= Central Government, service Area leads budget question with answer <20k
  @legalAdvice4 @Legal_Regression @LegalFinalTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId><recommendation>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework             | sector             | serviceArea           | budgetRadio | enterBudgets | frameworkId | expirationDate | details          | recommendation | lots |
      | Scenario 1 | legal services        | Central Government | Employment litigation | Yes         | 5000         | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1        | 1    |
      | Scenario 2 | Legal advice          | Central Government | Litigation            | Yes         | 15000        | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1        | 1    |
      | Scenario 3 | legal advice services | Central Government | Property              | Yes         | 19999        | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1        | 1    |

   #sector not Central Government, service Area leads to route (one option ore multiple from same kind)
  @legalAdvice5 @Legal_Regression @LegalFinalTest
  Scenario Outline: To verify Buyer has provided with different service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID  | framework      | sector                                                     | serviceArea                       | frameworkId | expirationDate | details                    |
      | Scenario 1  | legal case     | Local Government                                           | eDisclosure                       | RM3717      | 01/06/2021     | edisclosureServicesDetails |
      | Scenario 2  | e-Discovery    | Ministry of Defence or defence infrastructure organisation | eDisclosure_eDiscovery            | RM3717      | 01/06/2021     | edisclosureServicesDetails |
      | Scenario 3  | eDisclosure    | Devolved                                                   | eDiscovery                        | RM3717      | 01/06/2021     | edisclosureServicesDetails |
      | Scenario 4  | eDisclosure    | Education                                                  | eDisclosure_eDiscovery            | RM3717      | 01/06/2021     | edisclosureServicesDetails |
      | Scenario 5  | Disclosure     | Health                                                     | eDiscovery                        | RM3717      | 01/06/2021     | edisclosureServicesDetails |
      | Scenario 6  | Discovery      | Blue light                                                 | eDisclosure_eDiscovery            | RM3717      | 01/06/2021     | edisclosureServicesDetails |
      | Scenario 7  | e-Disclosure   | Housing                                                    | Costs lawyer_Legal costs draftman | RM6137      | 18/08/2022     | costLawyerDetails          |
      | Scenario 8  | costs draftman | Charities                                                  | Costs lawyer                      | RM6137      | 18/08/2022     | costLawyerDetails          |
      | Scenario 9  | draftsman      | Local Government                                           | Legal costs draftman              | RM6137      | 18/08/2022     | costLawyerDetails          |
      | Scenario 10 | draftsman      | Ministry of Defence or defence infrastructure organisation | Costs lawyer                      | RM6137      | 18/08/2022     | costLawyerDetails          |
      | Scenario 11 | draftsman      | Devolved                                                   | Costs lawyer_Legal costs draftman | RM6137      | 18/08/2022     | costLawyerDetails          |

    #sector not Central Government, service Area leads to wps recommendations with lot 3 and 4
  @legalAdvice6 @Legal_Regression @LegalFinalTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects what type "<service>" do you need radio button
    And User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<service>" answer for the question "What type of property legal do you need?"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    Examples:
      | ScenarioID  | framework      | service | sector                                                     | serviceArea               | frameworkId | expirationDate | details          | recommendation | lots |
      | Scenario 1  | property legal | Legal   | Local Government                                           | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 2  | property legal | Legal   | Ministry of Defence or defence infrastructure organisation | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 3  | Property       | Legal   | Devolved                                                   | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 4  | property legal | Legal   | Education                                                  | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 5  | property legal | Legal   | Health                                                     | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 6  | property       | Legal   | Blue light                                                 | Transport                 | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 7  | property legal | Legal   | Housing                                                    | Transport                 | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 8  | property legal | Legal   | Charities                                                  | Rail                      | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 9  | property legal | Legal   | Local Government                                           | Rail                      | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 10 | property legal | Legal   | Ministry of Defence or defence infrastructure organisation | Rail_Transport            | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 11 | property legal | Legal   | Devolved                                                   | Rail_Transport            | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |

      #sector not Central Government, service Area leads to locations and then to wps recommendations with lot 2a, 2b and 2c
  @legalAdvice7 @Legal_Regression @LegalFinalTest
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User enters "<framework>" details
    And User clicks on the "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services "<serviceArea>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User selects which sector are you looking for "<location>" radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<location>" answer for the question "Where do you need this service?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    Examples:
      | ScenarioID  | framework     | sector                                                     | serviceArea                                      | location         | frameworkId | expirationDate | details          | recommendation   | lots |
      | Scenario 1  | rail          | Local Government                                           | Anything else                                    | England or Wales | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2a_wpslot1 | 2    |
      | Scenario 2  | strategy      | Ministry of Defence or defence infrastructure organisation | Rail_eDisclosure                                 | England or Wales | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2a_wpslot1 | 2    |
      | Scenario 3  | strategy      | Devolved                                                   | Rail_eDiscovery                                  | England or Wales | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2a_wpslot1 | 2    |
      | Scenario 4  | trade panel   | Education                                                  | Legal costs draftman_Rail                        | England or Wales | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2a_wpslot1 | 2    |
      | Scenario 5  | trade panel   | Health                                                     | Costs lawyer_Property and construction_Transport | Scotland         | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1_wpslot2b | 2    |
      | Scenario 6  | trade panel  | Blue light                                                 | Anything else                                    | Scotland         | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1_wpslot2b | 2    |
      | Scenario 7  | Solicitor     | Housing                                                    | Property and construction_eDiscovery             | Scotland         | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1_wpslot2b | 2    |
      | Scenario 8  | Negotiation   | Charities                                                  | Legal costs draftman_Rail                        | Scotland         | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1_wpslot2b | 2    |
      | Scenario 9  | Litigation    | Local Government                                           | Costs lawyer_Transport                           | Northern Ireland | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2c_wpslot1 | 2    |
      | Scenario 10 | Legal Counsel | Ministry of Defence or defence infrastructure organisation | Transport_eDisclosure                            | Northern Ireland | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2c_wpslot1 | 2    |
      | Scenario 11 | Disputes      | Devolved                                                   | Anything else                                    | Northern Ireland | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2c_wpslot1 | 2    |