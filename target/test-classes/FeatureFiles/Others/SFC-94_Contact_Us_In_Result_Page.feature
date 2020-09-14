Feature: https://crowncommercialservice.atlassian.net/browse/SFC-94 story Epic: SFC-87

  @Test @SFC-94 @SFC-348 @SFC-87
  Scenario Outline: Check if buyer can access the contact page of the CCS at the end of the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Start now" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects how much budget "<budgetRadio>" radio button
#    And User enters budget amount "<enterBudgets>" in the budget field
    And User clicks on the "Continue" button
#    And User selects how long contract "<contractRadio>" radio button
#    And And User enters contract length "<contractLength>" in the contract field
#    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects additional facilities management services "<addFacilities>"
    And User clicks on the "Continue" button
    And User clicks on the "Contact CCS" button
    Then User is displayed with "Contact CCS" page

    Examples:
    Examples:
      | ScenarioID | framework | lookingFor | budgetRadio       | enterBudgets | contractRadio | contractLength | serviceArea            | addFacilities |
      | Scenario 1 | Linen     | Service    | £1million or more |              |               |                | Theatre pack and gowns | No            |