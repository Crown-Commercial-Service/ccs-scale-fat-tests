@NewGM
Feature:RM6186: Fuel Cards and Associated Services VI

  @RM6186
  Scenario Outline:RM6186: Fuel Cards and Associated Services VI
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "gpc" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Financial Services" radio button
    And User clicks on the "Continue" button
    And User selects the "Financial Services" radio button
    And User clicks on the "Continue" button
    And User selects the "Make a payment" radio button
    And User clicks on the "Continue" button
    And User selects the "Diesel/petrol card" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Fuel Cards and Associated Services VI |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Make a payment" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term | recommendation |
      | gpc         | RM6186         |

  @RM6248
  Scenario Outline:RM6248: Payment Solutions 2-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "Finance Conduct Authority" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Financial Services" radio button
    And User clicks on the "Continue" button
    And User selects the "Financial Services" radio button
    And User clicks on the "Continue" button
    And User selects the "Make a payment" radio button
    And User clicks on the "Continue" button
    And User selects the "Procurement card" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Payment Solutions 2 |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Procurement card" answer for the question "What service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term               | recommendation |
      | Finance Conduct Authority | RM6248Lot1     |

  @RM6118
  Scenario Outline:RM6118: Payment Acceptance-Lot1
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "pan-government" details and click "Start now" button
    And I am on the "Select which area suits your requirements" page
    When User selects the "Financial Services" radio button
    And User clicks on the "Continue" button
    And User selects the "Financial Services" radio button
    And User clicks on the "Continue" button
    And User selects the "Receive a payment" radio button
    And User clicks on the "Continue" button
    And User selects the "Solutions for face to face and cardholder not present (CNP) payments" radio button
    And User clicks on the "Continue" button
    Then I should see the recommended agreements
      | Payment Acceptance |
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Solutions for face to face and cardholder not present (CNP) payments" answer for the question "What type of service do you need?"
    And User is displayed with Framework Lot Recommended: "<recommendation>"

    Examples:
      | search_term    | recommendation |
      | pan-government | RM6118Lot1     |
