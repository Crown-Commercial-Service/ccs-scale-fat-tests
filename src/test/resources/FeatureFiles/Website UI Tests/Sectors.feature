@RegressionTest
Feature:Sectors Verification

  Background:
    Given I am on a CCS website HomePage
    And I navigate to "Sectors"

  @Sectors
  Scenario: Verify Cards-Heading
    Then I assert the Card heading as expected
      | Local government                           |
      | Health                                     |
      | Housing associations                       |
      | Schools and academies                      |
      | Central government and arm's length bodies |
      | Universities and colleges                   |
      | Police and emergency services              |
      | Charities                                  |
      | Devolved                                   |
      | Aggregation                                |
      | Our digital brochure                       |

  @Sectors @form
  Scenario: Verify:Local government
    And I click on "Local government" sector link
    Then I assert the sector page heading as expected
      | At the forefront of regeneration                 |
      | Keeping your community clean                     |
      | Collaborating with partners and networks         |
      | Helping you to make responsible buying decisions |
      | Solutions that achieve what matters to you       |
      | Digital transformation in local government       |
      | Download our digital brochure                    |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Health
    And I click on "Health" sector link
    Then I assert the sector page heading as expected
      | Creating an NHS that's fit for the future          |
      | ProCure 23                                         |
      | Digital transformation in the NHS                  |
      | NHS Workforce Alliance                             |
      | Our bitesize guides to common procurement concepts |
      | Supporting your health organisation                |
      | Making responsible buying decisions                |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Housing associations
    And I click on "Housing associations" sector link
    Then I assert the sector page heading as expected
      | Solutions for social housing providers                      |
      | Achieving social value                                      |
      | Housing sector challenges and how we are helping meet those |
      | Procurement Essentials                                      |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Schools and academies
    And I click on "Schools and academies" sector link
    Then I assert the sector page heading as expected
      | Why choose Crown Commercial Service for your school’s needs? |
      | Our featured deals                                           |
      | Aggregation                                                  |
      | Procurement Essentials                                       |
      | Our digital brochure                                         |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Central government and arm's length bodies
    And I click on "Central government and arm's length bodies" sector link
    Then I assert the sector page heading as expected
      | Empowering you to buy responsibly                  |
      | Our bitesize guides to common procurement concepts |
      | Bringing power to your procurement                 |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Universities and colleges
    And I click on "Universities and colleges" sector link
    Then I assert the sector page heading as expected
      | Making responsible buying decisions                |
      | Our bitesize guides to common procurement concepts |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Police and emergency services
    And I click on "Police and emergency services" sector link
    Then I assert the sector page heading as expected
      | Making responsible buying decisions                |
      | Our bitesize guides to common procurement concepts |
      | Bringing power to your procurement                 |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Charities
    And I click on "Charities" sector link
    Then I assert the sector page heading as expected
      | Making responsible buying decisions                |
      | Our bitesize guides to common procurement concepts |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Devolved
    And I click on "Devolved" sector link
    Then I assert the sector page heading as expected
      | Powerful partnerships in procurement               |
      | Making responsible buying decisions                |
      | Our bitesize guides to common procurement concepts |
      | Bringing power to your procurement                 |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Aggregation
    And I click on "Aggregation" sector link
    Then I assert the sector page heading as expected
      | Unlock the power of collective buying with Crown Commercial Service |
    And I assert the tab heading as expected
      | How to buy              |
      | Potential opportunities |
      | Not suitable for        |
      | Time to supply          |
    Then I fill the contact form and submit
    And I should see the success message

  @Sectors
  Scenario: Verify:Our digital brochure
    And I click on "Our digital brochure" sector link
    And I click on Download button without any input
    And I assert the errors on the form
      | Enter your name                                                     |
      | Enter your job title                                                |
      | Enter an email address in the correct format, like name@example.com |
      | Enter an organisation                                               |
    Then I fill the digital brochure form and download
    And I should see the download success message