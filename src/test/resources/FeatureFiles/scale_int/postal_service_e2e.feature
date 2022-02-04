Feature: GM Journey for Postal service framework


  @postalservices1
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" looking for "<lookingFor>" with "<productType>" and is provided with GM Escape page on selection of "<areaSuits>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And  User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which "<productType>" is needed for your requirements
    And User clicks on the "Continue" button
    And User selects do you need "<mailRoomEpuip>" radio button
    And User clicks on the "Continue" button
    And User should be displayed with recommendations "<frameworkId>" services for lots ""
    And User is displayed with "<productType>" answer for the question "What product type do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework | areaSuits       | lookingFor |  productType        |mailRoomEpuip | recommendation |frameworkId  | expirationDate | details        |
      | Scenario 1 | postal    | Postal Services | Product    | Mail Room Equipment |   Yes        |  lot2ps        | RM6017      | 30/11/2023     | postalDetails  |
      | Scenario 2 | postal    | Postal Services | Product    | Mail Room Equipment |   No         |  lot1ps        | RM6017      | 30/11/2023     | postalDetails  |

  @postalservices2
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" looking for "<lookingFor>" with "<productType>" and is provided with GM Escape page on selection of "<areaSuits>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which "<productType>" is needed for your requirements
    And User clicks on the "Continue" button
    Then User should be displayed with GM Escape page
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with initial search phrase from "<framework>"

    Examples:
      | ScenarioID | framework  | areaSuits          |lookingFor | productType |
      | Scenario 1 | postal     | Postal Services    |Product    | Something else |

  @postalservices3
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" looking for "<lookingFor>" with "<serviceType>" and "<serviceArea>" and is provided with GM Escape page on selection of "<areaSuits>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which "<serviceType>" is needed for your requirements
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<serviceType>" answer for the question "What type of service do you need?"
    And User is displayed with "<serviceArea>" answer for the question "Where are the services needed?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework  | areaSuits       |serviceType | lookingFor   |  serviceArea     | frameworkId | expirationDate | details      | recommendation    | lots |
      | Scenario 1 | envelope   | Postal Services | Physical   |    Service   |  International   | RM6017      | 30/11/2023     | postalDetails | lot4ps           | 1    |

  @postalservices4
  Scenario Outline: To verify Buyer has initiated GM journey for framework "<framework>" looking for "<lookingFor>" with "<serviceType>" and "<serviceArea>" and is provided with GM Escape page on selection of "<areaSuits>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which "<serviceType>" is needed for your requirements
    And User clicks on the "Continue" button
    And User selects which services required "<serviceArea>"
    And User clicks on the "Continue" button
    And User selects which services required "<servicesType>"
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<servicesType>" answer for the question "What type of service do you need?"
    And User is displayed with "<serviceArea>" answer for the question "Where are the services needed?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework       | areaSuits       |serviceType | lookingFor    |  serviceArea | servicesType                     |frameworkId | expirationDate | details       | recommendation   | lots |
      | Scenario 1 | envelope        | Postal Services | Physical   |    Service    |  National    | Mailroom collection and delivery |RM6017      | 30/11/2023     | postalDetails | lot3ps           | 1    |
      | Scenario 2 | folder inserter | Postal Services | Physical   |    Service    |  National    | Inbound delivery services        |RM6017      | 30/11/2023     | postalDetails | lot8ps           | 1    |
      | Scenario 3 | letters         | Postal Services | Physical   |    Service    |  National    | Security screening services      |RM6017      | 30/11/2023     | postalDetails | lot10ps          | 1    |
      | Scenario 4 | letters         | Postal Services | Physical   |    Service    |  National    | Audit and consultancy            |RM6017      | 30/11/2023     | postalDetails | lot5ps           | 1    |

  @postalservices5
  Scenario Outline: To verify Buyer has provided with different recommendations "<recommendation>" and after answering different set of question as looking for "<lookingFor>" selects Service area as "<serviceArea>" during the journey
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    When User enters "<framework>" details and click "Start now" button
    When User clicks on the "Start now" button
    And User selects which "<areaSuits>" your requirements
    And User clicks on the "Continue" button
    And User selects response of looking for "<lookingFor>"
    And User clicks on the "Continue" button
    And User selects which "<serviceType>" is needed for your requirements
    And User clicks on the "Continue" button
    And User selects which services required "<servicesType>"
    And User clicks on the "Continue" button
    Then User can successfully expand the details section
    And User should be displayed with recommendations "<frameworkId>" services for lots "<recommendation>"
    And User is displayed with Framework Id "<frameworkId>" and the expiration date "<expirationDate>" and the details "<details>" text
    And User is displayed with recommendations: "<recommendation>" in the right order
    And User should be displayed with a number of "<lots>" Lot services
    And User is displayed with "<lookingFor>" answer for the question "Are you looking for a product, service or both?"
    And User is displayed with "<servicesType>" answer for the question "What type of service do you need?"
    And User is displayed with initial search phrase from "<framework>"
    And User is displayed with Framework Lot Recommended: "<frameworkId><recommendation>"

    Examples:
      | ScenarioID | framework     | areaSuits       |serviceType                    | lookingFor    |  servicesType                        |frameworkId | expirationDate | details             | recommendation   | lots |
      | Scenario 1 | mail opening  | Postal Services | Digital                       |    Service    |  Fully outsourced                   |RM6017      | 30/11/2023      | postalDetails      | lot6ps           | 1    |
      | Scenario 2 | mail opening  | Postal Services | Physical and digital services |    Service    |  Inbound mail                        |RM6017           | 30/11/2023     | postalDetails | lot9ps           | 1    |
      | Scenario 3 | mail opening  | Postal Services | Physical and digital services |    Service    |  Physical and digital Mail Production |RM6017      | 30/11/2023     | postalDetails      | lot7ps           | 1    |


