@RegressionTest
Feature: Event Verification

  Background:
    Given I am on a CCS website HomePage
    When I navigate to Events

  @Events
  Scenario: Events -FilterCategory
    Then I assert the FilterCategory as expected
      | Event audience        |
      | Event type            |
      | Products and services |


  @Events
  Scenario: Events -Event audience
    Then I assert the Event audience filter options as expected
      | View all |
      | Buyer    |
      | Supplier |
    And I select "Supplier" filter Option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/events/?&audience_tag=149&page=1"

  @Events
  Scenario: Events -Event Type
    Then I assert the Event type filter options as expected
      | View all                  |
      | Aggregation               |
      | Community of practice     |
      | Conference and exhibition |
      | Engagement                |
      | Live webinar              |
    And I select "Engagement" filter Option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/events/?&event_type=183&page=1"


  @Events
  Scenario: Events -P&S
    Then I assert the product and services filter options as expected
      | View all                                   |
      | Technology                                 |
      | Estates                                    |
      | Corporate                                  |
      | Professional services                      |
      | Construction                               |
      | Energy                                     |
      | Network services                           |
      | Technology services                        |
      | Financial services                         |
      | Fleet                                      |
      | Travel, accommodation and venues           |
      | Software and hardware                      |
      | Carbon net zero                            |
      | Aggregation                                |
      | Social value                               |
      | Cloud and hosting                          |
      | Transforming Public Procurement            |
      | Digital capability and delivery            |
      | Estates support services                   |
      | Facilities management                      |
      | HR and workforce                           |
      | Outsourced services                        |
    And I select "Energy" filter Option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/events/?&event_type=183&page=1"


  @Events
  Scenario: Events -Sector
    Then I assert the Sector type filter options as expected
      | View all                      |
      | Charities                     |
      | Health                        |
      | Housing associations          |
      | Local government              |
      | Police and emergency services |
      | Schools and academies         |
      | Universities and colleges     |
      | Devolved                      |
      | Central government            |
      | Communities of practice       |
      | Supplier                      |
    And I select "Health" filter Option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/events/?&sectors=112&page=1"


  @Events
  Scenario: Events - Multiple Filter & Clear Filter
    Then I select "Engagement" filter Option
    And I select "Health" filter Option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/events/?&event_type=183&sectors=112&page=1"
    Then I click on clear filter
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/events/?&page=1"

