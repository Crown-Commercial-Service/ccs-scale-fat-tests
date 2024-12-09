@RegressionTest
Feature: HomePage Verification

  Background:
    Given I am on a CCS website HomePage

  @HomePage
  Scenario: Verify the HomePage components
    Then I should see the PPG related components
    And I should see Primary Menu list
    And I should see Secondary Menu list
    And I should see search components
    And I verify homepage cardslist
    And I verify latest news article
    And I should see campaignbox components
    And I should see Glossary components

  @HomePage
  Scenario: Verify BackToTop
    When I click on BacktoTop button
    Then I should be on the top of the page

  @HomePage
  Scenario: Verify LatestNews Navigation
    When I click on Browse all news articles link
    Then I should be on News page


  @HomePage
  Scenario Outline: Verify Buy and Supply Footer Navigation
    When I click on footer "<BuyAndSupply>" link verify the navigation
    Examples:
      | BuyAndSupply              |
      | Contracts Finder          |
      | Find a Tender             |
      | Glossary                  |
      | Register for eMarketplace |

  @UPT
  Scenario: Verify Cookie settings
    When I click on Cookie settings
    And I chance the choice to off for the question Cookies that measure website use
    Then I should assert the success message
    And I verify the selected option is stored
