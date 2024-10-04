@RegressionTest
Feature:Information for buyers and suppliers Verification

  Background:
    Given I am on a CCS website HomePage
    And I navigate to Information for buyers and suppliers

  @InformationForBuyersAndSuppliers
  Scenario: Verify Cards-Information for new buyers and suppliers
    Then I assert the Card heading as expected on Information for new buyers and suppliers layout
      | How to buy                 |
      | How to supply              |
      | Supplier marketing toolkit |
      | Glossary                   |

  @InformationForBuyersAndSuppliers
  Scenario: Verify Cards-Navigating public procurement
    Then I assert the Card heading as expected on Navigating public procurement layout
      | Procurement Essentials          |
      | Social value                    |
      | Transforming Public Procurement |
      | Commercial Insider              |


  @InformationForBuyersAndSuppliers
  Scenario: Verify Related articles count and Navigation
    Then I assert Related articles count
    And I click on "Browse all information for buyers and suppliers news articles" link
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/news/?&categories=168&page=1"