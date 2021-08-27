Feature: GM Lite Building user Journey

  Background:
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "carers" details and click "Start now" button
    And I am on the "Find a commercial agreement" page
    When User clicks on the "Start now" button
    And I am on the "Which area best matches your needs?" page
    When User selects the "Buildings" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose buildings. Select the area which best matches your needs." page

  Scenario Outline: Verify that user can navigate to the search results page for the Building and Construction Journey
    When User selects the "<Answer_1>" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose buildings or construction. Select the product or service which best matches your needs." page
    When User selects the "<Answer_2>" radio button
    When User clicks on the "Continue" button
    And I am on agreement result title "2 agreements that match your needs" page
    And User can successfully expand the details section
    Then I should see the recommended agreements
      |Construction Products Consumables and Materials|
      |Construction Works and Associated Services|
    And User is displayed with initial search phrase from "<search_term>"
    And User is displayed with "Buildings" answer for the question "Which area best matches your needs?"

    Examples:
      | search_term | Answer_1                    | Answer_2     |
      | carers      | Buildings or construction   | Construction |

  Scenario Outline: Verify that user can navigate to the search results page for the Energy, fuel or water journey
    When User selects the "Energy, fuel or water" radio button
    And User clicks on the "Continue" button
    And I am on the "You chose energy, fuel or water. Select the product or service which best matches your needs." page
    When User selects the "<Option>" radio button
    And User clicks on the "Continue" button
    And I am on agreement result title "2 agreements that match your needs" page
    And I should see the first "<Agreement 1>" displayed
    Then I should see the second "<Agreement 2>" displayed

    Examples:
      |ScenarioID|Option             |Agreement 1                                        |Agreement 2                                      |
      |1         |Electricity        |Utilities Switching Service DPS                    |Supply of Energy and Ancillary Services          |
      |2         |Energy             |Heat Networks and Electricity Generation Assets DPS|Vehicle Charging Infrastructure Solutions (VCIS) |
      |3         |Fuels              |National Fuels 2                                   |National Fuels Framework                         |
      |4         |Water or wastewater|Water, Wastewater and Ancillary Services           |Water, Wastewater and Ancillary Services 2       |


  Scenario Outline: Verify that user can navigate to the search results page for the Facilities, estate or workplace management journey
    When User selects the "Facilities, estate or workplace management" radio button
    And User clicks on the "Continue" button
    And I am on the "You chose facilities, estate or workplace management. Select the product or service which best matches your needs." page
    When User selects the "<Option>" radio button
    And User clicks on the "Continue" button
    And I am on agreement result title "1 agreement that matches your needs" page
    And I should see the first "<Agreement 1>" displayed

    Examples:
      |ScenarioID|Option             |Agreement 1                  |
      |1         |Cleaning services  |Building Cleaning Services   |
      |2         |Estates management |Estates Professional Services|

  Scenario: Verify that user can navigate to the agreement result page when no result is returned
    When User selects the "Facilities, estate or workplace management" radio button
    And User clicks on the "Continue" button
    And I am on the "You chose facilities, estate or workplace management. Select the product or service which best matches your needs." page
    When User selects the "Linen services" radio button
    And User clicks on the "Continue" button
    And I am on the "Are you looking for a product, service or both?" page
    When User selects the "Product" radio button
    And User clicks on the "Continue" button
    And I am on the "We need more information to help you" page
    And User clicks on the "Contact CCS" button
    And I am on the "Contact CCS" page

  Scenario: Verify that validation error message is displayed when an option is not selected(Building and Construction Journey)
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Buildings or construction" radio button
    When User clicks on the "Continue" button
    And I am on the "You chose buildings or construction. Select the product or service which best matches your needs." page
    When User clicks on the "Continue" button
    Then I should see the error message
    When User selects the "Building solutions" radio button
    And User clicks on the "Continue" button
    And I am on agreement result title "2 agreements that match your needs" page












