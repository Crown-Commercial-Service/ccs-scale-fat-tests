@RegressionTest
Feature: News Verification

  Background:
    Given I am on a CCS website HomePage
    When I navigate to "News"
  @Prod_Sanity
  @News
  Scenario: News -FilterCategory
    Then I assert the FilterCategory as expected
      | Type of article       |
      | Sectors               |
      | Products and services |


  @News
  Scenario: News - Type of article
    Then I assert the Type of article filter options as expected
      | View all               |
      | News and blogs         |
      | Case study             |
      | Procurement Essentials |
      | Commercial Insider     |
      | Whitepaper             |
      | Webinar                |
      | Digital guide          |
    And I select "News and blogs" filter Option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/news/?&categories=26&page=1"

  @News
  Scenario: News - Sectors
    Then I assert the Sectors type filter options as expected
      | View all                      |
      | Central government            |
      | Charities                     |
      | Devolved                      |
      | Health                        |
      | Housing associations          |
      | Local government              |
      | Police and emergency services |
      | Schools and academies         |
      | Supplier                      |
      | Universities and colleges     |
    And I select "Charities" filter Option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/news/?&sectors=111&page=1"


  @News
  Scenario: News -P&S
    Then I assert the news product and services filter options as expected
      | View all                         |
      | Aggregation                      |
      | Carbon net zero                  |
      | Cloud and hosting                |
      | Construction                     |
      | Corporate                        |
      | Digital capability and delivery  |
      | Energy                           |
      | Estates                          |
      | Estates support services         |
      | Facilities management            |
      | Financial services               |
      | Fleet                            |
      | HR and workforce                 |
      | Network services                 |
      | Outsourced services              |
      | Professional services            |
      | Social value                     |
      | Software and hardware            |
      | Technology                       |
      | Technology services              |
      | Transforming Public Procurement  |
      | Travel, accommodation and venues |
    And I select "Estates" filter Option
    Then I assert the current url  as "https://webuat.crowncommercial.gov.uk/news/?&products_services=119&page=1"

  @News
  Scenario: News - Multiple Filter & Clear Filter
    Then I select "News and blogs" filter Option
    And I select "Fleet" filter Option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/news/?&categories=26&products_services=135&page=1"
    Then I click on clear filter
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/news/?&page=1"

