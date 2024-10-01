@RegressionTest
Feature: ContactUS Verification

  Background:
    Given I am on a CCS website HomePage
    And I navigate to contact us form

  @ContactCCS @form
  Scenario: Contact CCS - Submit form
    When I fill the contact form and submit
    Then I should see the success message

  @ContactCCS
  Scenario: Verify the Contact CCS components
    Then I should see Helpful Links component
    And I should see agreement pricing component
    And I should see Talk to us component

