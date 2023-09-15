@NewGM
@RM6137
Feature:Cost Lawyers, Legal Services, Trade Law Panel and Rail Legal Services

  @RM6183
  Scenario Outline:RM6183:Trade Law Panel-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "FTA chapter" details and click "Start now" button
    And User selects the "Legal" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Central government" radio button
    And User clicks on the "Continue" button
    And User selects the "International trade law" radio button
    And User clicks on the "Continue" button
    And User selects the "Trade and disputes" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Trade Law Panel |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Legal" answer for the question "What type of FTA chapter do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | FTA chapter | RM6183Lot1     |

  @RM6204
  Scenario Outline:RM6204:Rail Legal Services
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "high value or complex merger and acquisition activity" details and click "Start now" button
    And User selects the "Legal Services Panel" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Central government" radio button
    And User clicks on the "Continue" button
    And User selects the "Rail legal services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Rail Legal Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Legal Services Panel" answer for the question "What type of high value or complex merger and acquisition activity do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term                                           | recommendation |
      | high value or complex merger and acquisition activity | RM6204         |

  @RM6179
  Scenario Outline:RM6179:Legal Services Panel-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "rail passenger service contracts (PSC)" details and click "Start now" button
    And User selects the "Legal" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Central government" radio button
    And User clicks on the "Continue" button
    And User selects the "General legal advice and services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Legal Services Panel |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Legal" answer for the question "What type of rail passenger service contracts (PSC) do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term                            | recommendation |
      | rail passenger service contracts (PSC) | RM6179Lot1     |

  @RM6284
  Scenario Outline:RM6284:Costs Lawyer Services 2-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "costs proceedings" details and click "Start now" button
    And User selects the "Legal" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Central government and wider public sector" radio button
    And User clicks on the "Continue" button
    And User selects the "General legal cost services" radio button
    And User clicks on the "Continue" button
    And User selects the "No" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Costs Lawyer Services 2 |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Legal" answer for the question "What type of costs proceedings do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term       | recommendation |
      | costs proceedings | RM6284Lot1     |