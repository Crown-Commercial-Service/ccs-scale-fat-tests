Feature: GM Journey for Legal framework

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
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
      | ScenarioID | framework | areaSuits | sector             | serviceArea | frameworkId | expirationDate | details          |
      | Scenario 1 | legal     | Legal     | Central Government | Rail        | RM6204      | 21/02/2025     | railLegalDetails |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which sector are you looking for "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits | sector             | serviceArea           | budgetRadio | recommendation   |
      | Scenario 1 | legal     | Legal     | Central Government | Employment litigation | No          | RM6179RM3788lot1 |

  Scenario Outline: To verify Buyer has provided with different service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
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
      | ScenarioID | framework | areaSuits | sector             | serviceArea           | budgetRadio | enterBudgets | frameworkId | expirationDate | details |
      | Scenario 1 | legal     | Legal     | Central Government | Employment litigation | Yes         | 20000        | RM6179      | 30/11/2024     | GLAS    |

  @runME
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
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
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits | sector                                                     | serviceArea           | budgetRadio | enterBudgets | recommendation   |
      | Scenario 1 | legal     | Legal     | Ministry of Defence or defence infrastructure organisation | Employment litigation | Yes         | 5000         | RM6179RM3788lot1 |

  Scenario Outline: To verify Buyer has provided with different service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
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
      | ScenarioID | framework | areaSuits | sector           | serviceArea                | frameworkId | expirationDate | details                                 |
      | Scenario 1 | legal     | Legal     | Local Government | eDisclosure and eDiscovery | RM6203      | 14/06/2024     | eDisclosureandeDiscoveryServicesDetails |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sector>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects which sector are you looking for "<sector>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which location "<location>" multi selection
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    And User is displayed with "<sector>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<location>" answer for the question "Where do you need this service?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"
    Examples:
      | ScenarioID | framework | areaSuits | sector           | serviceArea       | location                                   | frameworkId | recommendation   |
      | Scenario 1 | legal     | Legal     | Local Government | Anything else     | England or Wales                           | RM3788      | wpslot1_wpslot2a |
      | Scenario 2 | legal     | Legal     | Devolved         | Multiple services | England or Wales                           | RM3788      | wpslot1_wpslot2a |
      | Scenario 3 | legal     | Legal     | Education        | Anything else     | Scotland                                   | RM3788      | wpslot1_wpslot2b |
      | Scenario 4 | legal     | Legal     | Blue light       | Multiple services | Scotland                                   | RM3788      | wpslot1_wpslot2b |
      | Scenario 5 | legal     | Legal     | Health           | Anything else     | Northern Ireland                           | RM3788      | wpslot1_wpslot2c |
      | Scenario 6 | legal     | Legal     | Charities        | Multiple services | Northern Ireland                           | RM3788      | wpslot1_wpslot2c |
      | Scenario 6 | legal     | Legal     | Charities        | Multiple services | England or Wales_Northern Ireland_Scotland | RM3788      | wpslot1          |