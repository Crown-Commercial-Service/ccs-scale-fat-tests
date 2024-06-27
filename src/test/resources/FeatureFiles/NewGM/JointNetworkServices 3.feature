@NewGM @NetworkSolutions
Feature:Joint Network Solutions

  Background: Navigate to the results page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "IOS" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Joint Network Solutions" radio button
    When User clicks on the "Continue" button
    And I am on the "What network solution do you need?" page

  @RM6225
  Scenario Outline:RM6225:Gigabit Capable Connectivity DPS - LOT1
    When User selects the "Connectivity services" radio button
    When User clicks on the "Continue" button
    When User selects the "Connectivity infrastructure services" radio button
    When User clicks on the "Continue" button
    When User selects the "Managed Infrastructure Services" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Gigabit Capable Connectivity DPS |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | IOS         | RM6095Lot1     |

  @RM6167
  Scenario Outline:RM6167:PSN Core Services
    When User selects the "Critical Domain services" radio button
    When User clicks on the "Continue" button
    When User selects the "Public services network (PSN)" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | PSN Core Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Public services network (PSN)" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | IOS         | RM6167         |

  @RM6261
  Scenario Outline:RM6261:Mobile Voice and Data Services
    When User selects the "Radio, paging, mobile services" radio button
    When User clicks on the "Continue" button
    When User selects the "Mobile voice and data services including hardware" radio button
    When User clicks on the "Continue" button
    When User selects the "Direct award" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Mobile Voice and Data Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Mobile voice and data services including hardware" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | IOS         | RM6261Lot1     |

  @RM6181
  Scenario Outline:RM6181:Outsourced Contact Centre and Business Services
    When User selects the "Contact centre services" radio button
    When User clicks on the "Continue" button
    When User selects the "Yes" radio button
    When User clicks on the "Continue" button
    When User selects the "Yes" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Outsourced Contact Centre and Business Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | IOS         | RM6181Lot1     |

  @RM6116
  Scenario Outline:RM6116:Network Services 3
    When User selects the "Digital Communication Services (Unified Communications)" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Network Services 3 |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | IOS         | RM6116Lot4b    |

  @RM6099
  Scenario Outline:RM6099:Network Services 3
    When User selects the "Traffic management and smart solutions" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Transport Technology & Associated Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | IOS         | RM6099         |

  @RM3825
  Scenario Outline:RM3825:HSCN DPS
    When User selects the "Health and Social Care Network (HSCN) services" radio button
    When User clicks on the "Continue" button
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation    |
      | IOS         | RM3825RM6116Lot1a |