Feature: GM Journey for Legal framework -> See Linen schema from https://miro.com/app/board/o9J_kuCrpYQ=/ design link

  #sector= Central Government, service Area leads to route (one option ore multiple from same kind)
  @IntlegalAdvice1 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework    | sector                                                     | serviceArea       | frameworkId   | expirationDate        | details                             |
      | Scenario 1 | wider public | Central Government                                         | Rail              | RM3756        | 31/03/2022            | railLegalDetails                    |
      | Scenario 2 | wps le       | Ministry of Defence or defence infrastructure organisation | Finance & Complex | RM3786_RM3787 | 27/12/2021_20/12/2021 | GLAS_financeAndComplexLegalServices |
      | Scenario 3 | wps legal    | Central Government                                         | Anything else     | RM3786_RM3787 | 27/12/2021_20/12/2021 | GLAS_financeAndComplexLegalServices |

  @IntlegalAdvice1 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework           | areaSuits | sector                                                     | serviceArea                            | frameworkId | expirationDate | details                                 |
      | Scenario 1 | wider public sector | Legal     | Ministry of Defence or defence infrastructure organisation | eDisclosure and eDiscovery             | RM3717      | 01/06/2021     | eDisclosureandeDiscoveryServicesDetails |
      | Scenario 2 | DPS                 | Legal     | Central Government                                         | Costs lawyer and legal costs draftsmen | RM6137      | 18/08/2022     | costLawyerDetails                       |



    #sector= Central Government, service Area leads budget question with answer no/not sure
  @legalAdvice2 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
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
      | ScenarioID | framework | sector                                                     | serviceArea           | budgetRadio | frameworkId   | expirationDate        | details               | recommendation | lots | order |
      | Scenario 1 | Finance   | Central Government                                         | Employment litigation | No          | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |
      | Scenario 2 | law       | Central Government                                         | Litigation            | No          | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |
      | Scenario 3 | lawyer    | Ministry of Defence or defence infrastructure organisation | Property              | No          | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |

    #sector= Central Government, service Area leads budget question with answer >20k
  @legalAdvice3 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework   | sector             | serviceArea           | budgetRadio | enterBudgets | frameworkId | expirationDate | details |
      | Scenario 1 | Negotiation | Central Government | Employment litigation | Yes         | 20000        | RM3786      | 27/12/2021     | GLAS    |
#      | Scenario 2 | legal counsel | Ministry of Defence or defence infrastructure organisation | Litigation            | Yes         | 35000        | RM3786      | 27/12/2021     | GLAS    |

  @legalAdvice31 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"
    Examples:
      | ScenarioID | framework    | areaSuits | sector             | serviceArea | budgetRadio | enterBudgets | frameworkId | expirationDate | details |
      | Scenario 1 | Conveyancing | Legal     | Central Government | Property    | Yes         | 20001        | RM3786      | 27/12/2021     | GLAS    |

   #sector= Central Government, service Area leads budget question with answer <20k
  @legalAdvice4 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId><recommendation>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation> <order>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework            | sector                                                     | serviceArea           | budgetRadio | enterBudgets | frameworkId   | expirationDate        | details               | recommendation | lots | order |
      | Scenario 1 | Litigation           | Ministry of Defence or defence infrastructure organisation | Employment litigation | Yes         | 5000         | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |
      | Scenario 2 | Disputes             | Central Government                                         | Litigation            | Yes         | 15000        | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |
      | Scenario 3 | legal Representation | Central Government                                         | Property              | Yes         | 19999        | RM3786_RM3788 | 27/12/2021_30/09/2021 | GLAS_wpsLegalServices | wpslot1        | 1    | 2     |

   #sector not Central Government, service Area leads to route (one option ore multiple from same kind)
  @legalAdvice5 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
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
      | ScenarioID  | framework      | sector           | serviceArea                            | frameworkId | expirationDate | details                                 |
      | Scenario 1  | Disclosure     | Local Government | eDisclosure and eDiscovery             | RM3717      | 01/06/2021     | eDisclosureandeDiscoveryServicesDetails |
      | Scenario 2  | Discovery      | Charities        | eDisclosure and eDiscovery             | RM3717      | 01/06/2021     | eDisclosureandeDiscoveryServicesDetails |
      | Scenario 3  | e-Disclosure   | Devolved         | eDisclosure and eDiscovery             | RM3717      | 01/06/2021     | eDisclosureandeDiscoveryServicesDetails |
      | Scenario 4  | e-Discovery    | Education        | eDisclosure and eDiscovery             | RM3717      | 01/06/2021     | eDisclosureandeDiscoveryServicesDetails |
      | Scenario 5  | eDisclosure    | Health           | eDisclosure and eDiscovery             | RM3717      | 01/06/2021     | eDisclosureandeDiscoveryServicesDetails |
      | Scenario 6  | eDisclosure    | Blue light       | eDisclosure and eDiscovery             | RM3717      | 01/06/2021     | eDisclosureandeDiscoveryServicesDetails |
      | Scenario 7  | Drafting       | Housing          | Costs lawyer and legal costs draftsmen | RM6137      | 18/08/2022     | costLawyerDetails                       |
      | Scenario 8  | costs draftman | Local Government | Costs lawyer and legal costs draftsmen | RM6137      | 18/08/2022     | costLawyerDetails                       |
      | Scenario 9  | draftsman      | Education        | Costs lawyer and legal costs draftsmen | RM6137      | 18/08/2022     | costLawyerDetails                       |
      | Scenario 10 | Drafting       | Devolved         | Costs lawyer and legal costs draftsmen | RM6137      | 18/08/2022     | costLawyerDetails                       |

  @legalAdvice51 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
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
      | ScenarioID | framework | areaSuits | sector    | serviceArea                            | frameworkId | expirationDate | details           |
      | Scenario 1 | Statutes  | Legal     | Charities | Costs lawyer and legal costs draftsmen | RM6137      | 18/08/2022     | costLawyerDetails |

    #sector not Central Government, service Area leads to wps recommendations with lot 3 and 4
  @legalAdvice6 @Regression @PreProd @Prod @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    Examples:
      | ScenarioID | framework      | areaSuits | sector           | serviceArea               | frameworkId | expirationDate | details          | recommendation | lots |
      | Scenario 1 | property legal | Legal     | Local Government | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 2 | property       | Legal     | Charities        | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 3 | panel          | Legal     | Devolved         | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 4 | Property       | Legal     | Education        | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |
      | Scenario 5 | Construction   | Legal     | Health           | Property and construction | RM3788      | 30/09/2021     | wpsLegalServices | wpslot3        | 1    |

  @legalAdvice61 @Regression @PreProd @Prod @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    Then User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to "<frameworkId>"
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework           | sector           | serviceArea        | frameworkId | expirationDate | details          | recommendation | lots |
      | Scenario 1 | Rail                | Housing          | Transport and rail | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 2 | rail                | Charities        | Transport and rail | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 3 | transport           | Blue light       | Transport and rail | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 4 | Rail Legal Services | Local Government | Transport and rail | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 5 | rail legal          | Education        | Transport and rail | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |
      | Scenario 6 | rail legal services | Devolved         | Transport and rail | RM3788      | 30/09/2021     | wpsLegalServices | wpslot4        | 1    |

      #sector not Central Government, service Area leads to locations and then to wps recommendations with lot 2a, 2b and 2c
  @legalAdvice7 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
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
      | ScenarioID | framework                     | sector           | serviceArea       | location         | frameworkId | expirationDate | details          | recommendation   | lots |
      | Scenario 1 | legal case                    | Local Government | Anything else     | England or Wales | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1_wpslot2a | 2    |
      | Scenario 2 | IP Exploitation               | Devolved         | Multiple services | England or Wales | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1_wpslot2a | 2    |
      | Scenario 3 | government legal advisory     | Education        | Anything else     | Scotland         | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2b_wpslot1 | 2    |
      | Scenario 4 | General Legal Advice Services | Blue light       | Multiple services | Scotland         | RM3788      | 30/09/2021     | wpsLegalServices | wpslot2b_wpslot1 | 2    |
      | Scenario 5 | strategy                      | Health           | Anything else     | Northern Ireland | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1_wpslot2c | 2    |

  @legalAdvice7 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which location "<location>" multi selection
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
      | ScenarioID | framework | areaSuits | sector    | serviceArea       | location         | frameworkId | expirationDate | details          | recommendation   | lots |
      | Scenario 6 | Interims  | Legal     | Charities | Multiple services | Northern Ireland | RM3788      | 30/09/2021     | wpsLegalServices | wpslot1_wpslot2c | 2    |
