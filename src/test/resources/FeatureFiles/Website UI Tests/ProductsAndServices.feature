@RegressionTest
Feature: Product And Services Verification

  Background:
    Given I am on a CCS website HomePage
    When I navigate to "Products and services"

  @ProductAndService
  Scenario: Verify Top card layout & Additional services and agreements
    Then I should Top card layout and Additional services and agreements as expected

  @ProductAndService
  Scenario: Verify digital brochure Component
    Then I should assert digital brochure Component

  @ProductAndService
  Scenario: Verify  Latest news and guidance Component
    Then I should assert Latest news and guidance and navigation
    Then I assert the current url  as "https://webuat.crowncommercial.gov.uk/news/?&categories=29,188,26,168&products_services=166,121,119,181,118,172,164&page=1"
