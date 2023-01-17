Feature: GM Journey for Linen framework
  @RM3830
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" and is provided with GM Escape page on selection of Product during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    Then User should be displayed with GM Escape page
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with initial search phrase from "<framework>"
    And User clicks on the "Start again to change your answers" link
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor2>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User is displayed with "<lookingFor2>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractRadio>" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor | lookingFor2 | budgetRadio | contractRadio | serviceArea            | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen     | Linen     | Product    | Service     | No          | No            | Theatre pack and gowns | Anything else | RM3830      | 09/04/2023     | fmmDetails |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
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
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea                   | addFacilities                | frameworkId | recommendation |
      | Scenario 1 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 10             | Theatre pack and gowns        | No, I have everything I need | RM6154      | lot2           |
      | Scenario 2 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 11             | Cleanroom services            | No, I have everything I need | RM6154      | lot3           |
      | Scenario 3 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 11             | Linen hire with standard wash | No, I have everything I need | RM6154      | lot1a          |
      | Scenario 4 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 7              | Standard wash                 | No, I have everything I need | RM6154      | lot1b          |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
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
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to FM
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea            | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 8              | Theatre pack and gowns | Anything else | RM3830      | 09/04/2023     | fmmDetails |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor | budgetRadio | enterBudgets | serviceArea                   | addFacilities                | frameworkId | recommendation |
      | Scenario 1 | linen     | Linen     | Service    | Yes         | 12345000     | Theatre pack and gowns        | No, I have everything I need | RM6154      | lot2           |
      | Scenario 2 | linen     | Linen     | Service    | Yes         | 12345000     | Cleanroom services            | No, I have everything I need | RM6154      | lot3           |
      | Scenario 3 | linen     | Linen     | Service    | Yes         | 12345000     | Linen hire with standard wash | No, I have everything I need | RM6154      | lot1a          |
      | Scenario 4 | linen     | Linen     | Service    | Yes         | 12345000     | Standard wash                 | No, I have everything I need | RM6154      | lot1b          |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to FM
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor | budgetRadio | enterBudgets | serviceArea                   | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen     | Linen     | Service    | Yes         | 7654321      | Theatre pack and gowns        | Anything else | RM3830      | 09/04/2023     | fmmDetails |
      | Scenario 2 | linen     | Linen     | Service    | Yes         | 7654321      | Cleanroom services            | Anything else | RM3830      | 09/04/2023     | fmmDetails |
      | Scenario 3 | linen     | Linen     | Service    | Yes         | 7654321      | Linen hire with standard wash | Anything else | RM3830      | 09/04/2023     | fmmDetails |
      | Scenario 4 | linen     | Linen     | Service    | Yes         | 7654321      | Standard wash                 | Anything else | RM3830      | 09/04/2023     | fmmDetails |

    #budget: < 1 mil , months: >12, addFacilities: answer No
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
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
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea                   | addFacilities                | frameworkId | recommendation |
      | Scenario 1 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 13             | Theatre pack and gowns        | No, I have everything I need | RM6154      | lot2           |
      | Scenario 2 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 14             | Cleanroom services            | No, I have everything I need | RM6154      | lot3           |
      | Scenario 3 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 21             | Linen hire with standard wash | No, I have everything I need | RM6154      | lot1a          |
      | Scenario 4 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 30             | Standard wash                 | No, I have everything I need | RM6154      | lot1b          |

  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
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
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    And User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to FM
    Then User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | areaSuits | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea                   | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 18             | Theatre pack and gowns        | Anything else | RM3830      | 09/04/2023     | fmmDetails |
      | Scenario 2 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 20             | Cleanroom services            | Anything else | RM3830      | 09/04/2023     | fmmDetails |
      | Scenario 3 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 25             | Linen hire with standard wash | Anything else | RM3830      | 09/04/2023     | fmmDetails |
      | Scenario 4 | linen     | Linen     | Service    | Yes         | 12345        | Yes           | 35             | Standard wash                 | Anything else | RM3830      | 09/04/2023     | fmmDetails |