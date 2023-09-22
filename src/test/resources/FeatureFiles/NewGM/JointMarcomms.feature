@NewGM
Feature:Joint Marcomms

  @RM6123
  Scenario Outline:RM6123:Media Services -Lot2
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Marine research services" details and click "Start now" button
    And User selects the "Research" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Media Buying, planning and/or advertising" radio button
    And User clicks on the "Continue" button
    And User selects the "Media planning and buying" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Media Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Research" answer for the question "What type of Marine research services do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term              | recommendation |
      | Marine research services | RM6123Lot2     |

  @RM6124
  Scenario Outline:RM6124:Communications Marketplace- Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Human-driven Evaluation and Analysis" details and click "Start now" button
    And User selects the "Communication and Research" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Specialist marketing and communication services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Communications Marketplace |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Specialist marketing and communication services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term                          | recommendation |
      | Human-driven Evaluation and Analysis | RM6124Lot1     |

  @RM6125
  Scenario Outline:RM6125:Campaign Solutions 2-Lot5
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Research and development services and related consultancy services" details and click "Start now" button
    And User selects the "Research" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Communication services and solutions for longer term or more creative strategic projects" radio button
    And User clicks on the "Continue" button
    And User selects the "Major or strategically important events" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Campaign Solutions 2 |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Major or strategically important events" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term                                                        | recommendation |
      | Research and development services and related consultancy services | RM6125Lot5     |

  @RM6126
  Scenario Outline:RM6126:Research & Insights-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "LinkedIn" details and click "Start now" button
    And User selects the "Communication and Research" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Research and insights communication services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Research & Insights |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Research and insights communication services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | LinkedIn    | RM6126Lot1     |

  @RM6134
  Scenario Outline:RM6134:Media Monitoring and Associated Services -Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Business-to-Business (B2B)" details and click "Start now" button
    And User selects the "Research" radio button
    And User clicks on the "Continue" button
    And I am on the "What service do you need?" page
    And User selects the "Media monitoring and associated services" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Media Monitoring and Associated Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Media monitoring and associated services" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term                | recommendation |
      | Business-to-Business (B2B) | RM6134Lot1     |
