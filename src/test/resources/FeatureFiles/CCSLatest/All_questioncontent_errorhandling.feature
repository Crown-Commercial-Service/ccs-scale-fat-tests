@regression-tests
Feature: Scenarios for checking all questions and errors handling content for each flows and Routes to Market content

#  @linenQuestionContent @LinenErrorHandling @linenRoutesToMarketContent
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of the journey
    Given User navigates to the CCS homepage
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    Then User checks question content for question "linen-qst0"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "linen-qst0"
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    Then User checks question content for question "linen-qst1"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "linen-qst1"
    When User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    Then User checks question content for question "linen-qst2"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "linen-qst2"
    When User selects how much budget "Yes" radio button
    When User clicks on the "Continue" button
    Then User checks error handling content for question "linen-qst2.1"
    When User selects how much budget "<budgetRadio>" radio button
    And User clicks on the "Continue" button
    Then User checks question content for question "linen-qst3"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "linen-qst3"
    When User selects how much budget "Yes" radio button
    When User clicks on the "Continue" button
    Then User checks error handling content for question "linen-qst3.1"
    When User selects how long contract "<contractRadio>" radio button
    And User clicks on the "Continue" button
    Then User checks question content for question "linen-qst4"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "linen-qst4"
    When User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    Then User checks question content for question "linen-qst5"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "linen-qst5"
    When User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User checks Routes to Market Definitions content on "routesToMarketContent"

    Examples:
      | ScenarioID | framework | lookingFor | areaSuits |budgetRadio | contractRadio | serviceArea            | addFacilities |
      | Scenario 1 | linen     | Service    | Linen     |No          | No            | Theatre pack and gowns | Anything else |

  @legalQuestionContent @LegalErrorHandling @LegalRoutesToMarketContent
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of the journey
    Given User navigates to the CCS homepage
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    Then User checks question content for question "legal-qst0"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "legal-qst0"
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    Then User checks question content for question "legal-qst1"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "legal-qst1"
    And User selects which sector are you looking for "<sectorRadio1>" radio button
    And User clicks on the "Continue" button
    Then User checks question content for question "legal-qst2"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "legal-qst2"
    And User selects which services required "<serviceArea1>"
    And User clicks on the "Continue" button
    Then User checks question content for question "legal-qst3"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "legal-qst3"
    And User clicks on the back CTA
    And User clicks on the back CTA
    And User selects which sector are you looking for "<sectorRadio2>" radio button
    And User clicks on the "Continue" button
    Then User checks question content for question "legal-qst2.1"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "legal-qst2.1"
    And User selects which services required "<serviceArea2>"
    And User clicks on the "Continue" button
    Then User checks question content for question "legal-qst3.1"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "legal-qst3.1"
    And User selects which location "<location>" multi selection
    And User clicks on the "Continue" button
    Then User checks Routes to Market Definitions content on "routesToMarketContent"

    Examples:
      | ScenarioID | framework |areaSuits | sectorRadio1       | sectorRadio2 | serviceArea1 | serviceArea2  | location         |
      | Scenario 1 | legal     | Legal    |Central Government | Devolved     | Property     | Anything else | England or Wales |

#  @Fm2HousingQuestionContent @Fm2HousingErrorHandling @Fm2HousingRoutesToMarketContent
#  (BUG): WEB-1651
#  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of the journey
#    Given User navigates to the CCS homepage
#    When User enters "<framework>" details and click "Start now" button
#    When User clicks on the "Start now" button
#    Then User checks question content for question "housing-qst1"
#    When User clicks on the "Continue" button
#    Then User checks error handling content for question "housing-qst1"
#    And User selects which sector are you looking for "<sectorRadio1>" radio button
#    And User clicks on the "Continue" button
#    Then User checks question content for question "housing-qst2"
#    When User clicks on the "Continue" button
#    Then User checks error handling content for question "housing-qst2"
#    And User selects which type of housing services is required "<housingServices>"
#    And User clicks on the "Continue" button
#    Then User checks question content for question "housing-qst3"
#    When User clicks on the "Continue" button
#    Then User checks error handling content for question "housing-qst3"
#    And User clicks on the back CTA
#    And User clicks on the back CTA
#    And User selects which sector are you looking for "<sectorRadio2>" radio button
#    And User clicks on the "Continue" button
#    Then User checks question content for question "housing-qst2.1"
#    When User clicks on the "Continue" button
#    Then User checks error handling content for question "housing-qst2.1"
#    And User selects which services "<services>" required multi choice checkboxes
#    And User clicks on the "Continue" button
#    Then User checks question content for question "housing-qst3"
#    When User clicks on the "Continue" button
#    Then User checks error handling content for question "housing-qst3"
#    And User selects what sector "<sector>"are you buying for radio button
#    And User clicks on the "Continue" button
#    Then User checks Routes to Market Definitions content on "routesToMarketContent"
#    Examples:
#      | ScenarioID | framework | sectorRadio1 | sectorRadio2               | housingServices                    | services                         | sector    |
#      | Scenario 1 | housing   | Housing      | Facilities Management (FM) | Housing maintenance and management | Cleaning services_Waste services | Education |
