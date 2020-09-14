Feature: GM Journey for Legal framework


  @legalAdvice1
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sectorRadio>", selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which sector are you looking for "<sectorRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<recommServices>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order"
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User clicks on the Change button adjacent to question "Which service area do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommServices>"

    Examples:
      | ScenarioID  | framework | sectorRadio         | serviceArea                     | recommServices | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1  | legal     | Central Government  | Rail                            |                |             |                |         |                |      |
      | Scenario 2  | legal     | Central Government  | e-Disclosure/Discovery          |                |             |                |         |                |      |
      | Scenario 3  | legal     | Central Government  | cost lawyer/Law costs draftsmen |                |             |                |         |                |      |
      | Scenario 5  | legal     | Local government    | Property&Construction           |                |             |                |         |                |      |
      | Scenario 5  | legal     | Education           | e-disclosure/discovery          |                |             |                |         |                |      |
      | Scenario 6  | legal     | Ministry of Defence | cost lawyer/Law costs draftsmen |                |             |                |         |                |      |
      | Scenario 7  | legal     | Devolved            | Transport Rail                  |                |             |                |         |                |      |
      | Scenario 8  | legal     | Health              | Property&Construction           |                |             |                |         |                |      |
      | Scenario 9  | legal     | Blue Light          | e-disclosure/discovery          |                |             |                |         |                |      |
      | Scenario 10 | legal     | Housing             | cost lawyer/Law costs draftsmen |                |             |                |         |                |      |
      | Scenario 11 | legal     | Charities           | Transport Rail                  |                |             |                |         |                |      |


  @legalAdvice2
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sectorRadio>", selects Service area as "<serviceArea>",Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>", during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which sector are you looking for "<sectorRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<recommServices>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order"
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommServices>"

# Call the methods for results page and few more steps to be added on the results page . Discuss with Mihai for more info

    Examples:
      | ScenarioID | framework | sectorRadio        | serviceArea           | budgetRadio | enterBudgets | recommServices | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | legal     | Central Government | Employment litigation | Yes         | 1234567890   |                |             |                |         |                |      |
      | Scenario 2 | legal     | Central Government | Property              | Yes         | 123456       |                |             |                |         |                |      |
      | Scenario 3 | legal     | Central Government | Litigation            | Yes         | 1234567890   |                |             |                |         |                |      |


  @legalAdvice3
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sectorRadio>", selects Service area as "<serviceArea>",Budget radio as "<budgetRadio>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which sector are you looking for "<sectorRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<recommServices>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order"
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommServices>"

    Examples:
      | ScenarioID | framework | sectorRadio        | serviceArea           | budgetRadio | recommServices | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | legal     | Central Government | Employment litigation | No          |                |             |                |         |                |      |
      | Scenario 2 | legal     | Central Government | Property              | No          |                |             |                |         |                |      |
      | Scenario 3 | legal     | Central Government | Litigation            | No          |                |             |                |         |                |      |

  @legalAdvice4
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sectorRadio>", selects Service area as "<serviceArea>", selects service location as "<serviceLocation>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which sector are you looking for "<sectorRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects location "<serviceLocation>" radio button where the service is required
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<recommServices>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order"
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<serviceLocation>" answer for the question "Where do you you need this service?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommServices>"

    Examples:
      | ScenarioID | framework | sectorRadio | serviceArea    | serviceLocation  | recommServices | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | legal     | Education   | Other/multiple | Northern Ireland |                |             |                |         |                |      |
      | Scenario 2 | legal     | Devolved    | Other/multiple | Scotland         |                |             |                |         |                |      |
      | Scenario 3 | legal     | Charities   | Other/multiple | England/Wales    |                |             |                |         |                |      |
      | Scenario 4 | legal     | Housing     | Other/multiple | England/Wales    |                |             |                |         |                |      |

  @legalAdvice5
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sectorRadio>", selects Service area as "<serviceArea>",Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>" and click on change answer during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which sector are you looking for "<sectorRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<recommServices>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order"
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommServices>"
    And User clicks on the Change button adjacent to question "Which service area do you need?"
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User should be displayed with recommendations "<recommServices>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order"
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommServices>"

    Examples:
      | ScenarioID | framework | sectorRadio        | serviceArea           | budgetRadio | enterBudgets | recommServices | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | legal     | Central Government | Employment Litigation | Yes         | 12345        |                |             |                |         |                |      |

  @legalAdvice6
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommServices>", lots "<lots>", service details "<details>" on GM results page after initiating GM journey for framework "<framework>" and after answering different set of question as sector looking for "<sectorRadio>", selects Service area as "<serviceArea>",Budget radio as "<budgetRadio>" and enters budget as "<enterBudgets>" and Buyer clicks on "Start over to change your answers" link during the journey
    Given User logs in to the CCS application for "<ScenarioID>"
    When User clicks on the "Start now" button
    And User selects which sector are you looking for "<sectorRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    Then User should be displayed with recommendations "<recommServices>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order"
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommServices>"
    And User clicks on the "Start over to change your answers" link
    And User selects which sector are you looking for "<sectorRadio>" radio button
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
    And User should be displayed with recommendations "<recommServices>" services
    And User can successfully expand the details section
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order"
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<sectorRadio>" answer for the question "Which sector are you buying for?"
    And User is displayed with "<serviceArea>" answer for the question "Which service area do you need?"
    And User is displayed with "<budgetRadio>" answer for the question "Do you know your budget?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<recommServices>"

    Examples:
      | ScenarioID | framework | sectorRadio        | serviceArea           | budgetRadio | enterBudgets | recommServices | frameworkId | expirationDate | details | recommendation | lots |
      | Scenario 1 | legal     | Central Government | Employment Litigation | Yes         | 12345        |                |             |                |         |                |      |




#  sectorRadio : Central Government,Local government,Ministry of Defence,Devolved,Education,Health,Blue Light,Housing,Charities
#  serviceArea : Rail,eDisclosure,eDiscovery,Costs lawyer,legal costs draftman,Employment litigation,Property,Litigation,Finance & Complex,Multiple services,Anything else

#  Central government sectors : Rail , e-Disclosure/Discovery , cost lawyer/Law costs draftsmen , Other/multiple/Finance&complex , Employment Litigation, Property Litigation
#  flow changes here when Buyer selects Employment Litigation, Property Litigation - Estimated budget question is displayed and Results page . Else directly results page

#  Non CG Sectors : Property&Construction , e-disclosure/discovery , cost lawyer/Law costs draftsmen , Transport Rail , Other/multiple
#  Flow changes when other multiple is selected - location for service area is asked to Buyer and results page.Else directly results page


#  legal or Advice : Central Government -> Rail -> Rail LS RM3756
#  legal or Advice : Central Government -> e-Disclosure/Discovery -> e-Disclosure services RM3717
#  legal or Advice : Central Government -> cost lawyer/Law costs draftsmen -> cost lawyer/Law costs Services RM6137
#  legal or Advice : Central Government -> Other/multiple/Finance&complex -> Rail LS RM3756

#  And User clicks on the Change button adjacent to question "Which service area do you need?"
#  And User clicks on the "Start over to change your answers" link