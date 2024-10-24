@RegressionTest
Feature: SocialValue Verification

  Background:
    Given I am on a CCS website HomePage
    When I navigate to "Social value"

  @SocialValue
  Scenario: SocialValue-PageHeading and  form navigation
    Then I assert the social value page heading as expected
      | Buying decisions have the power to create a fairer and more sustainable society |
    And I click on 'Get in touch' button
    Then I assert the current url  as "https://webuat.crowncommercial.gov.uk/social-value#js-contact-form"


  @SocialValue
  Scenario: SocialValue-CardHeading and form submissions
    Then I assert the social value card heading as expected
      | What is social value?   |
      | Sustainable procurement |
      | Carbon net zero (CNZ)   |
      | Modern slavery          |
    Then I fill the contact form and submit
    And I should see the success message
