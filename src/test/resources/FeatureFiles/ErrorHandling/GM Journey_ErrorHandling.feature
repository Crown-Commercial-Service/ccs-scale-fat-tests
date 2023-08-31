Feature: Scenarios for checking all questions and errors handling content for each flows and Routes to Market content
@linen
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    #When User clicks on the "Start now" button
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

 @legal
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    #When User clicks on the "Start now" button
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

  @TechnicalErrorHandling
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of technical security journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    #When User clicks on the "Start now" button
    Then User checks question content for question "technical-qa0"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "technical-qa0"
    When User selects response of looking for "<requirements>"
    When User clicks on the "Continue" button
    Then User checks question content for question "technical-qa1"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "technical-qa1"
    When User selects response of looking for "<secTypeRadio>"
    And User clicks on the "Continue" button
    Then User checks question content for question "technical-qa2"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "technical-qa2"
    When User selects which technical security "<techSecurity>" is needed radio button
    When User clicks on the "Continue" button
    Then User checks Routes to Market Definitions content on "routesToMarketContent"

    Examples:
      | ScenarioID | framework | secTypeRadio       | requirements      | techSecurity     |
      | Scenario 1 | cctv      | Technical security | Security Services | Risk assessments |

  @SecurityServiceErrorHandling
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of security services journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    #When User clicks on the "Start now" button
    Then User checks question content for question "technical-qa0"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "technical-qa0"
    When User selects response of looking for "<requirements>"
    When User clicks on the "Continue" button
    Then User checks question content for question "technical-qa1"
    And User clicks on the "Continue" button
    Then User checks error handling content for question "technical-qa1"
    When User selects response of looking for "<secTypeRadio>"
    And User clicks on the "Continue" button
    Then User checks question content for question "secservice-qa1"
    And User clicks on the "Continue" button
    Then User checks error handling content for question "secservice-qa1"
    When User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User checks question content for question "secservice-qa2"
    And User clicks on the "Continue" button
    Then User checks error handling content for question "secservice-qa2"
    And User selects which services "<addFacilities>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User checks question content for question "secservice-qa3"
    And User clicks on the "Continue" button
    Then User checks error handling content for question "secservice-qa3"
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User checks Routes to Market Definitions content on "routesToMarketContent"

    Examples:
      | ScenarioID | framework | secTypeRadio      | secserviceAreaOpt             | requirements      | addFacilities  | sectorRadio                                                |
      | Scenario 1 | cctv      | Security services | Guarding services and patrols | Security Services | Waste services | Ministry of Defence or defence infrastructure organisation |

  @TechnicalSecurityServiceErrorHandling
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of security services journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    #When User clicks on the "Start now" button
    Then User checks question content for question "technical-qa0"
    When User clicks on the "Continue" button
    Then User checks error handling content for question "technical-qa0"
    When User selects response of looking for "<requirements>"
    When User clicks on the "Continue" button
    Then User checks question content for question "technical-qa1"
    And User clicks on the "Continue" button
    Then User checks error handling content for question "technical-qa1"
    When User selects response of looking for "<secTypeRadio>"
    And User clicks on the "Continue" button
    Then User checks question content for question "secservice-qa1.2"
    And User clicks on the "Continue" button
    Then User checks error handling content for question "secservice-qa1.2"
    When User selects which services "<secserviceAreaOpt>" required multi choice checkboxes
    And User clicks on the "Continue" button
    Then User checks question content for question "secservice-qa2.1"
    And User clicks on the "Continue" button
    Then User checks error handling content for question "secservice-qa2.1"
    And  User selects additional services "<addFacilities>" required outside of tech services
    And User clicks on the "Continue" button
    Then User checks question content for question "secservice-qa3.1"
    And User clicks on the "Continue" button
    Then User checks error handling content for question "secservice-qa3.1"
    And  User selects what sector "<sectorRadio>"are you buying for radio button
    And User clicks on the "Continue" button
    Then User checks Routes to Market Definitions content on "routesToMarketContent"

    Examples:
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt      | requirements      | addFacilities                     | sectorRadio |
      | Scenario 1 | cctv      | Security services and technical security | Alarm response centres | Security Services | Statutory inspections and testing | Education   |


