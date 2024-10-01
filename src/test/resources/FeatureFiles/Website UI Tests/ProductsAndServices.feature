@RegressionTest
Feature: Product And Services Verification

  Background:
    Given I am on a CCS website HomePage
    When I navigate to Product And Services

  @ProductAndService
  Scenario: Verify Top card layout & Additional services and agreements
    Then I should Top card layout and Additional services and agreements as expected

  @ProductAndService
  Scenario: Verify digital brochure Component
    Then I should assert digital brochure Component

  @ProductAndService
  Scenario: Verify  Latest news and guidance Component
    Then I should assert Latest news and guidance and navigation
    Then I assert the current url  as "https://webuat.crowncommercial.gov.uk/news/?&categories=29,186,26,168&products_services=166,119,164,121,120,118&page=1"

  @ProductAndService
  Scenario: Verify  Upcoming events and webinars Component
    Then I should assert upcoming events and webinars component
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/events/?&page=1"

