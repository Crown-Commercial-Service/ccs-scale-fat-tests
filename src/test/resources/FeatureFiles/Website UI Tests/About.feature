@RegressionTest
Feature: About Verification

  Background:
    Given I am on a CCS website HomePage
    When I navigate to About

  @AboutCCS
  Scenario: About CCS
    Then I should see About page component

  @AboutCCS
  Scenario: About CCS
    Then I assert the page heading as expected
      | Who we are                       |
      | What we do                       |
