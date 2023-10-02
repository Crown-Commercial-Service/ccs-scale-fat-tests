@EnergyTool
  @NewGM
Feature:Energy Tool
  Scenario:Energy Tool-ShortTerm Locked
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Supply of Energy" details and click "Supply of Energy 2" button
    And User clicks on the "Start now" button
    And User selects the "Between 18 and 24 months" radio button
    And User clicks on the "Continue" button
    And User selects the "Moderate risk" radio button
    And User clicks on the "Continue" button
    And User selects the "Fixed pricing" radio button
    And User clicks on the "Continue" button
    Then I should see "Short term locked" Energy Solution Results

  Scenario:Energy Tool-Medium term locked
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Supply of Energy" details and click "Supply of Energy 2" button
    And User clicks on the "Start now" button
    And User selects the "Between 18 and 24 months" radio button
    And User clicks on the "Continue" button
    And User selects the "Low risk" radio button
    And User clicks on the "Continue" button
    Then I should see "Medium term locked" Energy Solution Results

  Scenario:Energy Tool-Long term variable
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Supply of Energy" details and click "Supply of Energy 2" button
    And User clicks on the "Start now" button
    And User selects the "Over 24 months" radio button
    And User clicks on the "Continue" button
    And User selects the "Variable pricing" radio button
    And User clicks on the "Continue" button
    Then I should see "Long term variable" Energy Solution Results