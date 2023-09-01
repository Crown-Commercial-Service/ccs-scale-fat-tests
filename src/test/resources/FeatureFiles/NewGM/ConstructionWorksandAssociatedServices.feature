@RM6088
@RM6267
Feature:RM6088,RM6267:Construction Works and Associated Services

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "FAC-1" details and click "Start now" button
    #When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Construction works" radio button
    When User clicks on the "Continue" button

  @NewGM
  Scenario Outline:RM6088:Construction Works and Associated Services - Lot 1.1.1
    When User selects the "No" radio button
    And User clicks on the "Continue" button
    And User selects the "Building works" radio button
    And User clicks on the "Continue" button
    And User selects the "North England" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Construction Works and Associated Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Building works" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | FAC-1       | RM6088Lot1.1.1 |

  @NewGM
  Scenario Outline:RM6088:Construction Works and Associated Services - Lot 2.1
    When User selects the "Yes" radio button
    And User clicks on the "Continue" button
    And User selects the "Yes" radio button
    And User clicks on the "Continue" button
    And User selects the "General construction works" radio button
    And User clicks on the "Continue" button
    And User selects the "£3 million to £10 million" radio button
    And User clicks on the "Continue" button
    And User selects the "North England" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Construction Works and Associated Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "General construction works" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | FAC-1       | RM6088Lot2.1   |

  @NewGM
  Scenario Outline:RM6088:Construction Works and Associated Services - Lot 11
    When User selects the "No" radio button
    And User clicks on the "Continue" button
    And User selects the "Construction management services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Construction Works and Associated Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Construction management services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | FAC-1       | RM6088Lot11    |

  @NewGM
  Scenario Outline:RM6267:Construction Works and Associated Services 2 (CWAS2) / ProCure 23 (P23) - Lot 1.1
    When User selects the "Yes" radio button
    And User clicks on the "Continue" button
    When User selects the "No" radio button
    And User clicks on the "Continue" button
    And User selects the "ProCure 23" radio button
    And User clicks on the "Continue" button
    And User selects the "Less than £20 million" radio button
    And User clicks on the "Continue" button
    And User selects the "North East of England" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Construction Works and Associated Services 2 (CWAS2) / ProCure 23 (P23) |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "ProCure 23" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | FAC-1       | RM6267Lot1.1   |

  @NewGM
  Scenario Outline:RM6267:Construction Works and Associated Services 2 (CWAS2) / ProCure 23 (P23) - Lot 5
    When User selects the "Yes" radio button
    And User clicks on the "Continue" button
    When User selects the "No" radio button
    And User clicks on the "Continue" button
    And User selects the "General construction works" radio button
    And User clicks on the "Continue" button
    And User selects the "Greater than £80 million" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Construction Works and Associated Services 2 (CWAS2) / ProCure 23 (P23) |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "General construction works" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | FAC-1       | RM6267Lot5     |
