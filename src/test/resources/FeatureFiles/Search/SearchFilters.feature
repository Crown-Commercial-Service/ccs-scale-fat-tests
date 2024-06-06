@SearchFeature
Feature:
  Background:
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User clicks on the "Search agreements" link
    And I am on the "Search agreements" page

  Scenario: Verify the agreements results returned
    And I should see the search agreements results listed
    And The agreement listed on page one should match with the api response

  Scenario: Apply upcoming filter status
    And I clear the filter applied
    When I select "Upcoming" filter option
    Then I should see the upcoming agreements results returned

  Scenario: Apply expired filter status
    And I select "View all" filter option
    When I select "Expired" filter option
    Then I should see the expired agreements results returned

  Scenario: Apply View all filter status
    When I select "View all" filter option
    Then I should see the all agreements results returned

  Scenario: Filter by Agreement status
    And I enter "Technology" in the search agreement field
    Then I am on the "Search agreements for Technology" page
    And I should see the following filter facet
      | Live       |
      | Technology |
    When I select "Upcoming" filter option
    And I should see the following filter facet
      | Live       |
      | Upcoming   |
      | Technology |
    When User clicks on the "Clear filters" link
    And I should see the following filter facet
      | Live       |
      | Technology |
    When User clicks on the "Digital Specialists" link
    Then I am on the "Search agreements for Technology in Digital Specialists category" page

  Scenario: Navigate to DPS agreement page
    And I enter "RM6102" in the search agreement field
    When User clicks on the "Apprenticeship Training Dynamic Marketplace DPS" link
    And I am on the "Apprenticeship Training Dynamic Marketplace DPS" page
    And I should see the details section
      | Description            |
      | Benefits               |
      | Products and suppliers |
      | How to buy             |
      | Documents              |
    Then I should the key facts details
      | Agreement ID |
      | Start date   |
      | End date     |
      | Lots         |
    When User clicks on the "Description" link
    Then The accordion should be expanded

  Scenario: Navigate to the Gcloud framework type
    And I enter "GCloud 12" in the search agreement field
    And I select "View all" filter option
    When User clicks on the "G-Cloud 12" link
    Then I am on the "G-Cloud 12" page
    And I should see the details section
      | Updates   |
      | Documents |


  Scenario: Navigate to the Upcoming framework type
    And I clear the filter applied
    When I select "Upcoming" filter option
    And I click on the first search results
    Then I should see the below section
      | Summary             |
      | Description         |
      | Benefits            |
      | Product types       |
      | Customer engagement |
      | Supplier engagement |
      | Important links     |
      | Timeline            |

  Scenario: Navigate to the Standard framework type - RM6157
    And I enter "Modular Building Solutions" in the search agreement field
    When I click on the first search results
    And I am on the "Building Materials and Equipment" page
    And I should see the details section
      | Updates                |
      | Description            |
      | Benefits               |
      | Products and suppliers |
      | How to buy             |
      | Documents              |
    Then I should the key facts details
      | Agreement ID |
      | Start date   |
      | End date     |
      | Lots         |
      | Suppliers    |
    When User clicks on the open all link
    Then All the sections are expanded