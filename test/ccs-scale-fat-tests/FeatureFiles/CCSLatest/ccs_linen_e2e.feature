Feature: GM Journey for Linen framework -> See Linen schema from https://miro.com/app/board/o9J_kuCrpYQ=/ design link

  @linenProduct1 @Regression @CCS
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" and is provided with GM Escape page on selection of Product during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    Then User should be displayed with GM Escape page
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with initial search phrase from "<framework>"

    Examples:
      | ScenarioID | framework | lookingFor |
      | Scenario 1 | linen     | Product    |

  @linenProduct2 @Regression @CCS
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" and is provided with GM Escape page on selection of Product during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    Then User should be displayed with GM Escape page
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with initial search phrase from "<framework>"
    And User clicks on the "Start again to change your answers" link
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
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User should be displayed with GM Escape page with route to FM
    And User is displayed with "<lookingFor2>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractRadio>" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | lookingFor2 | budgetRadio | contractRadio | serviceArea            | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | LINEN     | Product    | Service     | No          | No            | Theatre pack and gowns | Anything else | RM3830      | 09/07/2022     | fmmDetails |

    #budget: < 1 mil , months: <12, addFacilities: answer No
  @linenService1  @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
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
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework        | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea                   | addFacilities                | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | Bedsheets        | Service    | Yes         | 12345        | Yes           | 10             | Theatre pack and gowns        | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot2           | 1    |
      | Scenario 2 | Linen            | Service    | Yes         | 12345        | Yes           | 11             | Cleanroom services            | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | laundry          | Service    | Yes         | 12345        | Yes           | 11             | Linen hire with standard wash | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1a          | 1    |
      | Scenario 4 | laundry services | Service    | Yes         | 12345        | Yes           | 7              | Standard wash                 | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1b          | 1    |

    #budget: < 1 mil , months: <12, addFacilities: answer Other, Security, Grounds maintenance, Catering, Pest Control
  @linenService2 @Regression @PreProd @Prod @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
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
      | ScenarioID | framework         | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea                   | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen and laundry | Service    | Yes         | 123          | Yes           | 8              | Theatre pack and gowns        | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.1 | linen hire    | Service    | Yes         | 12345        | Yes           | 10             | Theatre pack and gowns        | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.2 | reusable theatre packs     | Service    | Yes         | 12345        | Yes           | 7              | Theatre pack and gowns        | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.3 | theatre packs     | Service    | Yes         | 12345        | Yes           | 11             | Theatre pack and gowns        | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.4 | wash     | Service    | Yes         | 12345        | Yes           | 6              | Theatre pack and gowns        | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2 | linen hire        | Service    | Yes         | 12345        | Yes           | 5              | Cleanroom services            | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.1 | bath     | Service    | Yes         | 12345        | Yes           | 1              | Cleanroom services            | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.2 | bed     | Service    | Yes         | 12345        | Yes           | 2              | Cleanroom services            | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.3 | bedding     | Service    | Yes         | 12345        | Yes           | 3              | Cleanroom services            | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.4 | globe locums     | Service    | Yes         | 12345        | Yes           | 4              | Cleanroom services            | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3 | globe             | Service    | Yes         | 12345        | Yes           | 5              | Linen hire with standard wash | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.1 | gowns     | Service    | Yes         | 12345        | Yes           | 1              | Linen hire with standard wash | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.2 | gloves     | Service    | Yes         | 12345        | Yes           | 2              | Linen hire with standard wash | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.3 | hire     | Service    | Yes         | 12345        | Yes           | 3              | Linen hire with standard wash | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.4 | laundry     | Service    | Yes         | 12345        | Yes           | 4              | Linen hire with standard wash | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4 | Laundry           | Service    | Yes         | 12345        | Yes           | 5              | Standard wash                 | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.1 | Linen     | Service    | Yes         | 12345        | Yes           | 1              | Standard wash                 | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.2 | LINEN     | Service    | Yes         | 12345        | Yes           | 2              | Standard wash                 | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.3 | linen     | Service    | Yes         | 12345        | Yes           | 3              | Standard wash                 | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.4 | linen    | Service    | Yes         | 12345        | Yes           | 4              | Standard wash                 | Pest control        | RM3830      | 09/07/2022     | fmmDetails |

      #budget: > 1 mil, addFacilities: answer No
  @linenService3 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
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
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework         | lookingFor | budgetRadio | enterBudgets | serviceArea                   | addFacilities                | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | Linen             | Service    | Yes         | 12345000     | Theatre pack and gowns        | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot2           | 1    |
      | Scenario 2 | Linen and Laundry | Service    | Yes         | 12345000     | Cleanroom services            | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | Linen and         | Service    | Yes         | 12345000     | Linen hire with standard wash | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1a          | 1    |
      | Scenario 4 | Laundry           | Service    | Yes         | 12345000     | Standard wash                 | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1b          | 1    |

    #budget: > 1 mil, addFacilities: answer Other, Security, Grounds maintenance, Catering, Pest Control
  @linenService4111 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
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
      | ScenarioID | framework         | lookingFor | budgetRadio | enterBudgets | serviceArea                   | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen             | Service    | Yes         | 12345000     | Theatre pack and gowns        | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.1 | linen     | Service    | Yes         | 12345000     | Theatre pack and gowns        | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.2 | linen     | Service    | Yes         | 12345000     | Theatre pack and gowns        | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.3 | linen     | Service    | Yes         | 12345000     | Theatre pack and gowns        | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.4 | linen     | Service    | Yes         | 12345000     | Theatre pack and gowns        | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2 | Linen and Luandry | Service    | Yes         | 12345000     | Cleanroom services            | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.1 | linen     | Service    | Yes         | 12345000     | Cleanroom services            | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.2 | linen     | Service    | Yes         | 12345000     | Cleanroom services            | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.3 | linen     | Service    | Yes         | 12345000     | Cleanroom services            | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.4 | linen     | Service    | Yes         | 12345000     | Cleanroom services            | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3 | Laundry           | Service    | Yes         | 12345000     | Linen hire with standard wash | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.1 | linen     | Service    | Yes         | 12345000     | Linen hire with standard wash | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.2 | linen     | Service    | Yes         | 12345000     | Linen hire with standard wash | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.3 | linen     | Service    | Yes         | 12345000     | Linen hire with standard wash | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.4 | linen     | Service    | Yes         | 12345000     | Linen hire with standard wash | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4 | LAUNDRY           | Service    | Yes         | 12345000     | Standard wash                 | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.1 | linen     | Service    | Yes         | 12345000     | Standard wash                 | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.2 | linen     | Service    | Yes         | 12345000     | Standard wash                 | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.3 | linen     | Service    | Yes         | 12345000     | Standard wash                 | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.4 | linen     | Service    | Yes         | 12345000     | Standard wash                 | Pest control        | RM3830      | 09/07/2022     | fmmDetails |

    #budget: < 1 mil , months: >12, addFacilities: answer No
  @linenService5 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
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
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "£<enterBudgets>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework         | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea                   | addFacilities                | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | laundry and linen | Service    | Yes         | 12345        | Yes           | 13             | Theatre pack and gowns        | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot2           | 1    |
      | Scenario 2 | laundry           | Service    | Yes         | 12345        | Yes           | 14             | Cleanroom services            | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | laundry services  | Service    | Yes         | 12345        | Yes           | 21             | Linen hire with standard wash | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1a          | 1    |
      | Scenario 4 | Laundry           | Service    | Yes         | 12345        | Yes           | 30             | Standard wash                 | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1b          | 1    |

    #budget: < 1 mil , months: >12, addFacilities: answer Other, Security, Grounds maintenance, Catering, Pest Control
  @linenService6 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
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
      | ScenarioID | framework | lookingFor | budgetRadio | enterBudgets | contractRadio | contractLength | serviceArea                   | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | laundry   | Service    | Yes         | 12345        | Yes           | 18             | Theatre pack and gowns        | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.1 | linen     | Service    | Yes         | 12345        | Yes           | 16             | Theatre pack and gowns        | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.2 | linen     | Service    | Yes         | 12345        | Yes           | 17             | Theatre pack and gowns        | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.3 | linen     | Service    | Yes         | 12345        | Yes           | 19             | Theatre pack and gowns        | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.4 | linen     | Service    | Yes         | 12345        | Yes           | 16             | Theatre pack and gowns        | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 2 | linen     | Service    | Yes         | 12345        | Yes           | 20             | Cleanroom services            | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.1 | linen     | Service    | Yes         | 12345        | Yes           | 17             | Cleanroom services            | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.2 | linen     | Service    | Yes         | 12345        | Yes           | 30             | Cleanroom services            | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.3 | linen     | Service    | Yes         | 12345        | Yes           | 23             | Cleanroom services            | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.4 | linen     | Service    | Yes         | 12345        | Yes           | 24             | Cleanroom services            | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 3 | laundry   | Service    | Yes         | 12345        | Yes           | 25             | Linen hire with standard wash | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.1 | linen     | Service    | Yes         | 12345        | Yes           | 21             | Linen hire with standard wash | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.2 | linen     | Service    | Yes         | 12345        | Yes           | 22             | Linen hire with standard wash | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.3 | linen     | Service    | Yes         | 12345        | Yes           | 23             | Linen hire with standard wash | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.4 | linen     | Service    | Yes         | 12345        | Yes           | 24             | Linen hire with standard wash | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 4 | linen     | Service    | Yes         | 12345        | Yes           | 35             | Standard wash                 | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.1 | linen     | Service    | Yes         | 12345        | Yes           | 31             | Standard wash                 | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.2 | linen     | Service    | Yes         | 12345        | Yes           | 32             | Standard wash                 | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.3 | linen     | Service    | Yes         | 12345        | Yes           | 33             | Standard wash                 | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.4 | linen     | Service    | Yes         | 12345        | Yes           | 34             | Standard wash                 | Pest control        | RM3830      | 09/07/2022     | fmmDetails |

    #budget: don't know/not sure, months: <12, addFacilities: answer No
  @linenService7 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And And User enters contract length "<contractLength>" in the contract field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework         | lookingFor | budgetRadio | contractRadio | contractLength | serviceArea                   | addFacilities                | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | linen and laundry | Service    | No          | Yes           | 3              | Theatre pack and gowns        | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot2           | 1    |
      | Scenario 2 | linen             | Service    | No          | Yes           | 4              | Cleanroom services            | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | laundry           | Service    | No          | Yes           | 1              | Linen hire with standard wash | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1a          | 1    |
      | Scenario 4 | linen             | Service    | No          | Yes           | 8              | Standard wash                 | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1b          | 1    |

    #budget: don't know/not sure, months: <12, addFacilities: answer Other, Security, Grounds maintenance, Catering, Pest Control
  @linenService8 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
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
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework         | lookingFor | budgetRadio | contractRadio | contractLength | serviceArea                   | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen             | Service    | No          | Yes           | 8              | Theatre pack and gowns        | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.1 | linen     | Service    | No          | Yes           | 10             | Theatre pack and gowns        | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.2 | linen     | Service    | No          | Yes           | 7              | Theatre pack and gowns        | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.3 | linen     | Service    | No          | Yes           | 11             | Theatre pack and gowns        | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.4 | linen     | Service    | No          | Yes           | 6              | Theatre pack and gowns        | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 2 | linen and laundry | Service    | No          | Yes           | 5              | Cleanroom services            | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.1 | linen     | Service    | No          | Yes           | 1              | Cleanroom services            | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.2 | linen     | Service    | No          | Yes           | 2              | Cleanroom services            | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.3 | linen     | Service    | No          | Yes           | 3              | Cleanroom services            | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.4 | linen     | Service    | No          | Yes           | 4              | Cleanroom services            | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 3 | lanudry           | Service    | No          | Yes           | 5              | Linen hire with standard wash | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.1 | linen     | Service    | No          | Yes           | 1              | Linen hire with standard wash | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.2 | linen     | Service    | No          | Yes           | 2              | Linen hire with standard wash | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.3 | linen     | Service    | No          | Yes           | 3              | Linen hire with standard wash | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.4 | linen     | Service    | No          | Yes           | 4              | Linen hire with standard wash | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 4 | linen             | Service    | No          | Yes           | 5              | Standard wash                 | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.1 | linen     | Service    | No          | Yes           | 1              | Standard wash                 | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.2 | linen     | Service    | No          | Yes           | 2              | Standard wash                 | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.3 | linen     | Service    | No          | Yes           | 3              | Standard wash                 | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.4 | linen     | Service    | No          | Yes           | 4              | Standard wash                 | Pest control        | RM3830      | 09/07/2022     | fmmDetails |

   #budget: don't know/not sure, months: >12, addFacilities: answer No
  @linenService9 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And And User enters contract length "<contractLength>" in the contract field
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | contractRadio | contractLength | serviceArea                   | addFacilities                | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | linen     | Service    | No          | Yes           | 13             | Theatre pack and gowns        | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot2           | 1    |
      | Scenario 2 | linen     | Service    | No          | Yes           | 14             | Cleanroom services            | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | linen     | Service    | No          | Yes           | 17             | Linen hire with standard wash | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1a          | 1    |
      | Scenario 4 | linen     | Service    | No          | Yes           | 18             | Standard wash                 | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1b          | 1    |

   #budget: don't know/not sure, months: >12, addFacilities: answer Other, Security, Grounds maintenance, Catering, Pest Control
  @linenService10 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>", Contract radio as "<contractRadio>" and enters contract length "<contractLength>" , selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
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
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractLength> months" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework         | lookingFor | budgetRadio | contractRadio | contractLength | serviceArea                   | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen and laundry | Service    | No          | Yes           | 28             | Theatre pack and gowns        | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.1 | linen     | Service    | No          | Yes           | 20             | Theatre pack and gowns        | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.2 | linen     | Service    | No          | Yes           | 27             | Theatre pack and gowns        | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.3 | linen     | Service    | No          | Yes           | 21             | Theatre pack and gowns        | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.4 | linen     | Service    | No          | Yes           | 26             | Theatre pack and gowns        | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 2 | linen             | Service    | No          | Yes           | 25             | Cleanroom services            | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.1 | linen     | Service    | No          | Yes           | 21             | Cleanroom services            | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.2 | linen     | Service    | No          | Yes           | 22             | Cleanroom services            | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.3 | linen     | Service    | No          | Yes           | 23             | Cleanroom services            | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.4 | linen     | Service    | No          | Yes           | 24             | Cleanroom services            | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 3 | linen             | Service    | No          | Yes           | 25             | Linen hire with standard wash | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.1 | linen     | Service    | No          | Yes           | 21             | Linen hire with standard wash | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.2 | linen     | Service    | No          | Yes           | 22             | Linen hire with standard wash | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.3 | linen     | Service    | No          | Yes           | 23             | Linen hire with standard wash | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.4 | linen     | Service    | No          | Yes           | 24             | Linen hire with standard wash | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 4 | linen             | Service    | No          | Yes           | 25             | Standard wash                 | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.1 | linen     | Service    | No          | Yes           | 21             | Standard wash                 | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.2 | linen     | Service    | No          | Yes           | 22             | Standard wash                 | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.3 | linen     | Service    | No          | Yes           | 23             | Standard wash                 | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.4 | linen     | Service    | No          | Yes           | 24             | Standard wash                 | Pest control        | RM3830      | 09/07/2022     | fmmDetails |

   #budget: don't know/not sure, months: don't know/not sure, addFacilities: answer No
  @linenService11 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>", Contract radio as "<contractRadio>", selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractRadio>" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | contractRadio | serviceArea                   | addFacilities                | frameworkId | expirationDate | details      | recommendation | lots |
      | Scenario 1 | linen     | Service    | No          | No            | Theatre pack and gowns        | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot2           | 1    |
      | Scenario 2 | linen     | Service    | No          | No            | Cleanroom services            | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot3           | 1    |
      | Scenario 3 | linen     | Service    | No          | No            | Linen hire with standard wash | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1a          | 1    |
      | Scenario 4 | linen     | Service    | No          | No            | Standard wash                 | No, I have everything I need | RM6154      | 19/03/2023     | linenDetails | lot1b          | 1    |

   #budget don't know/not sure, months: don't know/not sure, addFacilities: answer Other, Security, Grounds maintenance, Catering, Pest Control
  @linenService12 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>", Contract radio as "<contractRadio>", selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
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
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractRadio>" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"

    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | contractRadio | serviceArea                   | addFacilities | frameworkId | expirationDate | details    |
      | Scenario 1 | linen     | Service    | No          | No            | Theatre pack and gowns        | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.1 | linen     | Service    | No          | No            | Theatre pack and gowns        | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.2 | linen     | Service    | No          | No            | Theatre pack and gowns        | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.3 | linen     | Service    | No          | No            | Theatre pack and gowns        | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 1.4 | linen     | Service    | No          | No            | Theatre pack and gowns        | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 2 | linen     | Service    | No          | No            | Cleanroom services            | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.1 | linen     | Service    | No          | No            | Cleanroom services            | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.2 | linen     | Service    | No          | No            | Cleanroom services            | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.3 | linen     | Service    | No          | No            | Cleanroom services            | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 2.4 | linen     | Service    | No          | No            | Cleanroom services            | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 3 | linen     | Service    | No          | No            | Linen hire with standard wash | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.1 | linen     | Service    | No          | No            | Linen hire with standard wash | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.2 | linen     | Service    | No          | No            | Linen hire with standard wash | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.3 | linen     | Service    | No          | No            | Linen hire with standard wash | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 3.4 | linen     | Service    | No          | No            | Linen hire with standard wash | Pest control        | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 4 | linen     | Service    | No          | No            | Standard wash                 | Anything else | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.1 | linen     | Service    | No          | No            | Standard wash                 | Security            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.2 | linen     | Service    | No          | No            | Standard wash                 | Grounds maintenance | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.3 | linen     | Service    | No          | No            | Standard wash                 | Catering            | RM3830      | 09/07/2022     | fmmDetails |
#      | Scenario 4.4 | linen     | Service    | No          | No            | Standard wash                 | Pest control        | RM3830      | 09/07/2022     | fmmDetails |

     #budget don't know/not sure, months: don't know/not sure, addFacilities: answer multiple
  @linenService12 @Regression @CCS
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>", Budget radio as "<budgetRadio>", Contract radio as "<contractRadio>", selects Service area as "<serviceArea>" and Additional facilities as "<addFacilities>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    And User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    And User selects how long contract "<contractRadio>" radio button
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
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with "<contractRadio>" answer for the question "Do you know how long the contract will be for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service do you need?"
    And User is displayed with "<addFacilities>" answer for the question "Do you need any additional facility management services?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId>"
    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio | contractRadio | serviceArea            | addFacilities                                      | frameworkId | expirationDate | details    |
      | Scenario 1 | linen     | Service    | No          | No            | Theatre pack and gowns | Catering_Security                                  | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 2 | linen     | Service    | No          | No            | Theatre pack and gowns | Catering_Pest control                              | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 3 | linen     | Service    | No          | No            | Theatre pack and gowns | Catering_Grounds maintenance_Security              | RM3830      | 09/07/2022     | fmmDetails |
      | Scenario 4 | linen     | Service    | No          | No            | Theatre pack and gowns | Catering_Grounds maintenance_Pest control_Security | RM3830      | 09/07/2022     | fmmDetails |