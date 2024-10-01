Feature: Agreement Service API tests

  @APITests
  Scenario:Get Agreements call
    When I fire GET Agreements call and assert the status

  @APITests
  Scenario:Get Agreement call
    When I fire GET Agreement call and assert the status

  @APITests
  Scenario:Get Agreement Documents call
    When I fire GET Agreement documents call and assert the status

  @APITests
  Scenario:Get Agreement Updates call
    When I fire GET Agreement updates call and assert the status

  @APITests
  Scenario:Get Agreement lots call
    When I fire GET Agreement lots call and assert the status

  @APITests
  Scenario:Get Agreement lot call
    When I fire GET Agreement lot call and assert the status

  @APITests
  Scenario:Get Agreement lot Supplier call
    When I fire GET Agreement lot supplier call and assert the status

  @APITests
  Scenario:Get Agreement lot EventTypes call
    When I fire GET Agreement lot event types call and assert the status

  @APITests
  Scenario:Get Agreement lot Data Templates call
    When I fire GET Agreement lot data Templates call and assert the status

  @APITests
  Scenario:Get Agreement lot Documents Templates call
    When I fire GET Agreement lot documents Templates call and assert the status

  @APITests
  Scenario:Put Agreement
    When I fire PUT Agreement endpoint and assert the status


  @APITests
  Scenario:Put Lot
    When I fire PUT Lot endpoint and assert the status

  @APITests
  Scenario:Put Lots
    When I fire PUT Lots endpoint and assert the status

  @APITests
  Scenario:Put Lots Supplier
    When I fire PUT Lot supplier endpoint and assert the status

  @APITests
  Scenario:PUT an agreement and verify in GET call
    When I fire PUT Agreement endpoint and create "RM1809"
    Then assert "RM1809" is created
