Feature: GM Journey for Linen framework

  @linenProduct1
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" and is provided with GM Escape page on selection of Product during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    #Then User should be displayed with GM Escape page
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    And User is displayed with initial search phrase from "<framework>"

    Examples:
      | ScenarioID | framework | lookingFor |
      | Scenario 1 | linen     | Product    |

  @linenProduct2
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" and is provided with GM Escape page on selection of Product during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    #Then User should be displayed with GM Escape page
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    And User is displayed with initial search phrase from "<framework>"
    And User clicks on the "Start over to change your answers" link
    And User selects response of looking for "<lookingFor2>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #And User is displayed with recommendations: "<recommendation>" in the right order"
    #And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor2>" answer for the question "Are you looking for a product or a service?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractRadio>" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | lookingFor2 | budgetRadio | contractRadio | serviceArea            | addFacilities | frameworkId | expirationDate | details    | recommendation | lots |
      | Scenario 1 | linen     | Product    | Service     | No          | No            | Theatre pack and gowns | Other         | RM3830      | 07/09/2022     | fmmDetails |                |      |

  @linenService1
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And And User enters contract length "<contractLength>" in the contract field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #And User is displayed with recommendations: "<recommendation>" in the right order"
    #And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    #And User is displayed with "<budgetRadio> (£<enterBudgets>>)" answer for the question "Do you know your budget?"
    #And User is displayed with "<contractRadio> (<contractLength> months)" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea                   | addFacilities       | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | linen     | Service    | Yes         | 12345        | Yes           | 10             | Theatre pack and gowns        | Security            | RM3830      | 07/09/2022     | fmmDetails   |                |      |
      | Scenario 2 | linen     | Service    | Yes         | 12345        | Yes           | 11             | Cleanroom services            | No                  | RM6154      | 03/19/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | linen     | Service    | Yes         | 12345        | Yes           | 12             | Linen hire with standard wash | Grounds maintenance | RM3830      | 07/09/2022     | fmmDetails   |                |      |
      | Scenario 4 | linen     | Service    | Yes         | 12345        | Yes           | 24             | Standard wash                 | No                  | RM6154      | 03/19/2023     | linenDetails | lot3           | 1    |

  @linenService2
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journeyTest
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #And User is displayed with recommendations: "<recommendation>" in the right order"
    #And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    #And User is displayed with "<budgetRadio> (£<enterBudgets>>)" answer for the question "Do you know your budget?"
    #And User is displayed with "<contractRadio> (<contractLength> months)" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | enterBudgets | serviceArea                   | addFacilities | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | linen     | Service    | Yes         | 1234567890   | Theatre pack and gowns        | No            | RM6154      | 03/19/2023     | linenDetails | lot3           | 1    |
      | Scenario 2 | linen     | Service    | Yes         | 1234567890   | Cleanroom services            | No            | RM6154      | 03/19/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | linen     | Service    | Yes         | 1234567890   | Linen hire with standard wash | No            | RM6154      | 03/19/2023     | linenDetails | lot3           | 1    |
      | Scenario 4 | linen     | Service    | Yes         | 1234567890   | Standard wash                 | No            | RM6154      | 03/19/2023     | linenDetails | lot3           | 1    |


  @linenService3
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" , Contract radio as "<contractRadio>", selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #And User is displayed with recommendations: "<recommendation>" in the right order"
    #And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractRadio>" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | contractRadio | serviceArea                   | addFacilities | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | linen     | Service    | No          | No            | Theatre pack and gowns        | Other         | RM3830      | 07/09/2022     | fmmDetails   |                |      |
      | Scenario 2 | linen     | Service    | No          | No            | Cleanroom services            | No            | RM6154      | 03/19/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | linen     | Service    | No          | No            | Linen hire with standard wash | Catering      | RM3830      | 07/09/2022     | fmmDetails   |                |      |
      | Scenario 4 | linen     | Service    | No          | No            | Standard wash                 | No            | RM6154      | 03/19/2023     | linenDetails | lot3           | 1    |

  @linenService4
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" and user clicks on Change answers during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And And User enters contract length "<contractLength>" in the contract field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #And User is displayed with recommendations: "<recommendation>" in the right order"
    #And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    #And User is displayed with "<budgetRadio> (£<enterBudgets>>)" answer for the question "Do you know your budget?"
    #And User is displayed with "<contractRadio> (<contractLength> months)" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"
    And User clicks on the Change button adjacent to question "Do you know your budget?"
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And And User enters contract length "<contractLength>" in the contract field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #And User is displayed with recommendations: "<recommendation>" in the right order"
    #And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    #And User is displayed with "<budgetRadio> (£<enterBudgets>>)" answer for the question "Do you know your budget?"
    #And User is displayed with "<contractRadio> (<contractLength> months)" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea            | addFacilities       | frameworkId | expirationDate | details    | recommendation | lots |
      | Scenario 1 | linen     | Service    | Yes         | 12345        | Yes           | 10             | Theatre pack and gowns | Grounds maintenance | RM3830      | 07/09/2022     | fmmDetails |                |      |

  @linenService5
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" and Buyer clicks on "Start over to change your answers" link during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And And User enters contract length "<contractLength>" in the contract field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #And User is displayed with recommendations: "<recommendation>" in the right order"
    #And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    #And User is displayed with "<budgetRadio> (£<enterBudgets>>)" answer for the question "Do you know your budget?"
    #And User is displayed with "<contractRadio> (<contractLength> months)" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"
    And User clicks on the "Start over to change your answers" link
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And And User enters contract length "<contractLength>" in the contract field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<frameworkId>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    #And User is displayed with recommendations: "<recommendation>" in the right order"
    #And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product or a service?"
    #And User is displayed with "<budgetRadio> (£<enterBudgets>>)" answer for the question "Do you know your budget?"
    #And User is displayed with "<contractRadio> (<contractLength> months)" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need additional facilities management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea            | addFacilities | frameworkId | expirationDate | details    | recommendation | lots | recommServices |
      | Scenario 1 | linen     | Service    | Yes         | 12345        | Yes           | 10             | Theatre pack and gowns | Catering      | RM3830      | 07/09/2022     | fmmDetails |                |      |                |



#    serviceArea :  Cleanroom services,Theatre pack and gowns,linen hire with standard wash,Standard wash
#  lookingFor
#  budgetRadio
#  enterBudgets
#  contractRadio
#  contractLength
#  serviceArea
#  addFacilities
#  serviceLocation
#  sector

