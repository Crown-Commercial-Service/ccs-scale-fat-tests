@RegressionTest
Feature: SearchSupplier Verification

  Background:
    Given I am on a CCS website HomePage
    When I navigate to Search supplier

  @SearchSuppliers1
  Scenario: Verify Warning message Display
    Then I should see warning message displayed on the top

  @SearchSuppliers
  Scenario: Verify Filter Feature
    Then I assert the supplier FilterCategory as expected
      | Select framework |
      |                  |
      | Results per page |
    And I select "Back Office Software (RM6194)" from filter option
    Then I assert the supplier FilterCategory as expected
      | Select framework |
      | Lot              |
      | Results per page |
    Then I assert the Lot subsection FilterCategory as expected
      | Show all suppliers on the selected framework |
      | Show suppliers on a specific lot             |
    And I select "Show suppliers on a specific lot" from filter option
    And I select "Lot 1: Back Office Software" from filter option
    And I assert the current url  as "https://webuat.crowncommercial.gov.uk/suppliers/search/1?search=true&framework=RM6194&lot-filter-nested=2333&limit=20"


  @SearchSuppliers
  Scenario: Verify Search feature
    When I enter "KPMG" in the search supplier field
    And User clicks on the "KPMG LLP" supplier link
    And I should see Agreements and lots supplied to section
      | Audit & Assurance Services (A&AS)                   |
      | Cloud Compute 2                                     |
      | Corporate Finance Services 2                        |
      | Cyber Security Services 2 Expired                   |
      | Digital and IT Professional Services (DIPS)         |
      | eDisclosure Services Expired                        |
      | Learning and Development                            |
      | Management Consultancy Framework (MCF) Expired      |
      | Management Consultancy Framework Three (MCF3)       |
      | Management Consultancy Framework Two (MCF2) Expired |
      | Payment Acceptance 2                                |
      | Software Design and Implementation Services         |
      | Technology Services 3                               |
      | Transport Technology & Associated Services          |
    Then I should the Supplier details details
      | Telephone:             |
      | Website:               |
      | DUNS number:           |
      | Address:               |
      | Carbon Reduction plan: |