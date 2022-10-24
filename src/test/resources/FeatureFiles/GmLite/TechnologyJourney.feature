Feature: Corporate Solutions Journey

  Background:
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "carers" details and click "Start now" button
    And I am on the "Find a commercial agreement" page
    When User clicks on the "Start now" button
    And I am on the "Which area best matches your needs?" page

  Scenario: Verify that user can navigate through the Corporate Solutions Journey
    When User selects the "Technology" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose technology. Select the area which best matches your needs." page
    Then I should see the following options
      | Digital future                   |
      | Network services                 |
      | Software and cyber security      |
      | Technology products and services |
    When User selects the "Technology products and services" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose technology products and services. Select the product or service which best matches your needs." page
    Then I should see the following options
      | Technology innovation |
      | Hardware and software |
      | Technology services   |
      | Traffic services      |
    When User selects the "Technology services" radio button
    When User clicks on the "Continue" button
    And I am on the "Are you looking for a product, service or both?" page
    Then I should see the following options
      | Product                   |
      | Service                   |
      | Both, product and service |
    When User selects the "Product" radio button
    When User clicks on the "Continue" button
    And I am on the "Which sector are you buying for?" page
    Then I should see the following options
      | Education                                                  |
      | Central Government                                         |
      | Local Government                                           |
      | Ministry of Defence or defence infrastructure organisation |
      | Devolved                                                   |
      | Health                                                     |
      | Blue light                                                 |
      | Housing                                                    |
      | Charities                                                  |
    When User selects the "Education" radio button
    And User clicks on the "Continue" button
    And I am on agreement result title "1 agreement and 2 lots that matches your needs" page
    Then I should see the recommended agreements
      | Education Technology |

  Scenario: Verify that validation error message is displayed when an option is not selected(Technology Journey)age
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Technology" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose technology. Select the area which best matches your needs." page
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Technology products and services" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose technology products and services. Select the product or service which best matches your needs." page
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Technology services" radio button
    When User clicks on the "Continue" button
    And I am on the "Are you looking for a product, service or both?" page
    When User clicks on the "Continue" button
    Then I should see the error message "Select if you're looking for a product, service or both"
    When User selects the "Product" radio button
    When User clicks on the "Continue" button
    And I am on the "Which sector are you buying for?" page
    When User clicks on the "Continue" button
    Then I should see the error message "Select which sector you are buying for"
    When User selects the "Education" radio button
    And User clicks on the "Continue" button
    And I am on agreement result title "1 agreement and 2 lots that matches your needs" page
