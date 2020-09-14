$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/FeatureFiles/Others/fm_errorhandling.feature");
formatter.feature({
  "name": "Error handling scenarios for fm journeys",
  "description": "",
  "keyword": "Feature"
});
formatter.scenarioOutline({
  "name": "To verify question content and error handling content for framework \"\u003cframework\u003e\" for each question of technical security journey",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@TechnicalErrorHandling"
    }
  ]
});
formatter.step({
  "name": "User logs in to the CCS application for \"\u003cScenarioID\u003e\" and \"\u003cframework\u003e\"",
  "keyword": "Given "
});
formatter.step({
  "name": "User clicks on the \"Start now\" button",
  "keyword": "When "
});
formatter.step({
  "name": "User checks question content for question \"technical-qa1\"",
  "keyword": "Then "
});
formatter.step({
  "name": "User clicks on the \"Continue\" button",
  "keyword": "When "
});
formatter.step({
  "name": "User selects response of looking for \"\u003csecTypeRadio\u003e\"",
  "keyword": "When "
});
formatter.step({
  "name": "User clicks on the \"Continue\" button",
  "keyword": "And "
});
formatter.step({
  "name": "User checks question content for question \"technical-qa2\"",
  "keyword": "Then "
});
formatter.step({
  "name": "User clicks on the \"Continue\" button",
  "keyword": "When "
});
formatter.step({
  "name": "User selects which technical security \"\u003ctechSecurity\u003e\" is needed radio button",
  "keyword": "When "
});
formatter.step({
  "name": "User clicks on the \"Continue\" button",
  "keyword": "When "
});
formatter.step({
  "name": "User checks Routes to Market Definitions content on \"routesToMarketContent\"",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "ScenarioID",
        "framework",
        "secTypeRadio",
        "techSecurity"
      ]
    },
    {
      "cells": [
        "Scenario 1",
        "cctv",
        "Technical security",
        "Risk assessments"
      ]
    }
  ]
});
formatter.scenario({
  "name": "To verify question content and error handling content for framework \"cctv\" for each question of technical security journey",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@TechnicalErrorHandling"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "User logs in to the CCS application for \"Scenario 1\" and \"cctv\"",
  "keyword": "Given "
});
formatter.match({
  "location": "TestContext.user_reaches_the_landing_page_after_the_search(String,String)"
});
formatter.write("CCS application is launched");
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User clicks on the \"Start now\" button",
  "keyword": "When "
});
formatter.match({
  "location": "HomeSteps.user_clicks_on_the_button(String)"
});
formatter.write("URL - https://int.scale.crowncommercial.gov.uk/find-a-commercial-agreement/landing-page?q\u003dcctv");
formatter.embedding("image/png", "embedded0.png");
formatter.write(" User Clicked on Start now button");
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "User checks question content for question \"technical-qa1\"",
  "keyword": "Then "
});
formatter.match({
  "location": "E2ESteps.user_gets_question_content(String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: The expected question elements are not the same with the actual expected:\u003c... enhance IT security[]\u003e but was:\u003c... enhance IT security[\nContinue\nNeed help with this service? Contact CCS]\u003e\r\n\tat org.junit.Assert.assertEquals(Assert.java:115)\r\n\tat com.scale.businessPages.E2EPage.checkQuestionContent(E2EPage.java:790)\r\n\tat com.scale.stepdefs.E2ESteps.user_gets_question_content(E2ESteps.java:149)\r\n\tat ✽.User checks question content for question \"technical-qa1\"(file:src/test/resources/FeatureFiles/Others/fm_errorhandling.feature:7)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "User clicks on the \"Continue\" button",
  "keyword": "When "
});
formatter.match({
  "location": "HomeSteps.user_clicks_on_the_button(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User selects response of looking for \"Technical security\"",
  "keyword": "When "
});
formatter.match({
  "location": "E2ESteps.user_selects_response_of_looking_for(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks on the \"Continue\" button",
  "keyword": "And "
});
formatter.match({
  "location": "HomeSteps.user_clicks_on_the_button(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User checks question content for question \"technical-qa2\"",
  "keyword": "Then "
});
formatter.match({
  "location": "E2ESteps.user_gets_question_content(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks on the \"Continue\" button",
  "keyword": "When "
});
formatter.match({
  "location": "HomeSteps.user_clicks_on_the_button(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User selects which technical security \"Risk assessments\" is needed radio button",
  "keyword": "When "
});
formatter.match({
  "location": "E2ESteps.user_selects_which_technical_security_is_needed_radio_button(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User clicks on the \"Continue\" button",
  "keyword": "When "
});
formatter.match({
  "location": "HomeSteps.user_clicks_on_the_button(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "User checks Routes to Market Definitions content on \"routesToMarketContent\"",
  "keyword": "Then "
});
formatter.match({
  "location": "GMResultPageSteps.user_gets_routes_to_market_content(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.write("URL - https://int.scale.crowncommercial.gov.uk/find-a-commercial-agreement/start-journey/63f1b00f-530d-4271-a74d-e584c04d8e1b?q\u003dcctv");
formatter.embedding("image/png", "embedded1.png");
formatter.after({
  "status": "passed"
});
});