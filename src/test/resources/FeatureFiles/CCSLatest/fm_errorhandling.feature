@regTests @errhandling
Feature: Error handling scenarios for fm journeys

@TechnicalErrorHandling
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of technical security journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    Then User checks question content for question "technical-qa1"
    When User clicks on the "Continue" button
#    Then User checks error handling content for question "technical-qa1"
    When User selects response of looking for "<secTypeRadio>"
    And User clicks on the "Continue" button
    Then User checks question content for question "technical-qa2"
    When User clicks on the "Continue" button
#    Then User checks error handling content for question "technical-qa2"
    When User selects which technical security "<techSecurity>" is needed radio button
    When User clicks on the "Continue" button
    Then User checks Routes to Market Definitions content on "routesToMarketContent"

    Examples:
      | ScenarioID | framework | secTypeRadio       | techSecurity     |
      | Scenario 1 | cctv      | Technical security | Risk assessments |

  @TSecurityServiceErrorHandling
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of security services journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
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
      | ScenarioID | framework | secTypeRadio      | secserviceAreaOpt             | addFacilities  | sectorRadio                                                |
      | Scenario 1 | cctv      | Security services | Guarding services and patrols | Waste services | Ministry of Defence or defence infrastructure organisation |

  @TechnicalSecurityServiceErrorHandling
  Scenario Outline: To verify question content and error handling content for framework "<framework>" for each question of security services journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
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
      | ScenarioID | framework | secTypeRadio                             | secserviceAreaOpt      | addFacilities                     | sectorRadio |
      | Scenario 1 | cctv      | Security services and technical security | Alarm response centres | Statutory inspections and testing | Education   |

