@RM6141
Feature:RM6141:  Language Services

  Scenario Outline:RM6141:  Language Services-Escape Page
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Video Relay Service" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Language Services" radio button
    When User clicks on the "Continue" button
    And I am on the "Where do you need the language services?" page
    When User selects the "Regionally" radio button
    And User clicks on the "Continue" button
    And User selects the "Non Spoken Language Services" radio button
    And User clicks on the "Continue" button
    And User selects the "National" radio button
    And User clicks on the "Continue" button
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Non Spoken Language Services" answer for the question "What service do you need?"
    And User is displayed with "National" answer for the question "What region do you need?"

    Examples:
      | search_term         |
      | Video Relay Service |

  Scenario Outline:RM6141:  Language Services-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "VRS" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Language Services" radio button
    When User clicks on the "Continue" button
    And I am on the "Where do you need the language services?" page
    When User selects the "Nationally" radio button
    And User clicks on the "Continue" button
    And User selects the "Nationally managed service" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Language Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Nationally managed service" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | VRS         | RM6141Lot1     |

  Scenario Outline:RM6141:  Language Services-Lot5
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "sign language" details and click "Start now" button
    When User clicks on the "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Language Services" radio button
    When User clicks on the "Continue" button
    And I am on the "Where do you need the language services?" page
    When User selects the "Internationally" radio button
    When User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Language Services |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Internationally" answer for the question "Where do you need the language services?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term   | recommendation |
      | sign language | RM6141Lot5m    |

