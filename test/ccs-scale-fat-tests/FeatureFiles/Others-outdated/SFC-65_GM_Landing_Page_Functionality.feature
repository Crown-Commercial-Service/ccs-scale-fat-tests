Feature: SFC-65 Guided Match Landing Page Functionality scenarios

  //This scenario is blocked until AI functionality will be integrated into CCS platform
  //@Test @SFC-65 @GM-LandingPage-functionality @SFC-120 @SFC-64
  //Scenario Outline: Landing on GM page if the search keywords match a decision tree
  //  Given User logs in to the CCS application for "<ScenarioID>"
  //  And User is navigated to CCS home page
  //  And User enters "<framework>" details
  //  And User clicks on the "Help me find the right framework" button
  //  Then User is displayed with GM landing page
//
  //  Examples:
  //    | ScenarioID | framework |
  //    | Scenario 1 | Linen     |

  //This scenario is blocked until AI functionality will be integrated into CCS platform
  //@Test @SFC-65 @GM-LandingPage-functionality @SFC-119 @SFC-64
  //Scenario Outline: If the search keywords does not match a decision tree, the GM Landing page is not reached
  //  Given User logs in to the CCS application for "<ScenarioID>"
  //  And User is navigated to CCS home page
  //  And User enters "<framework>" details
  //  Then The user it's not landed on any GM Landing page
//
  //  Examples:
  //    | ScenarioID | framework |
  //    | Scenario 1 | Nose     |

  @Test @SFC-65 @GM-LandingPage-functionality @SFC-122 @SFC-64
  Scenario Outline: GM Landing page contains the 'Start Now' button
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    Then User is displayed with GM landing page
    And User clicks on the "Start now" button

    Examples:
      | ScenarioID | framework |
      | Scenario 1 | Linen     |

  @Test @SFC-65 @GM-LandingPage-functionality @SFC-121 @SFC-64
  Scenario Outline: GM Landing page contains the 'Back to search result' button
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    Then User is displayed with GM landing page
    And User clicks on the "Search framework" button

    Examples:
      | ScenarioID | framework |
      | Scenario 1 | Linen     |

  @Test @SFC-65 @GM-LandingPage-functionality @SFC-117 @SFC-64
  Scenario Outline: GM Landing 'Start Now' button opens GM in the same tab
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    Then User is displayed with GM landing page
    And User clicks on the "Start now" button
    Then The GM journey is opened in the same tab

    Examples:
      | ScenarioID | framework |
      | Scenario 1 | Linen     |

  @Test @SFC-65 @GM-LandingPage-functionality @SFC-111 @SFC-64
  Scenario Outline: GM Landing 'Back to search result' button opens Search result in the same tab
    Given User logs in to the CCS application for "<ScenarioID>" and "<framework>"
    Then User is displayed with GM landing page
    And User clicks on the "Start now" button
    And User clicks on the "Search framework" button
    Then The Back to search result screen is opened in the same tab

    Examples:
      | ScenarioID | framework |
      | Scenario 1 | Linen     |