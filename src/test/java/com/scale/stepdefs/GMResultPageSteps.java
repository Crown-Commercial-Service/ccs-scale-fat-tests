package com.scale.stepdefs;


import com.scale.businessPages.GMResultPage;
import com.scale.context.TestContext;
import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import com.scale.framework.utility.PageObjectManager;
import com.scale.framework.utility.StringUtils;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.net.MalformedURLException;
import java.text.NumberFormat;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import static java.lang.Integer.parseInt;
import static org.junit.Assert.assertEquals;

public class GMResultPageSteps {

    private Logger log = Log.getLogger(com.scale.stepdefs.GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private GMResultPage gmResultPage;

    public GMResultPageSteps(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
    }

    @Then("User should be displayed with GM Escape page")
    public void user_is_displayed_with_gm_escape_page() throws MalformedURLException, InterruptedException {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.gmNeedMoreInformationResultPage();
    }

    @And("User is displayed with initial search phrase from \"([^\"]*)\"")
    public void user_is_displayed_with_initial_search_phrase(String initialSearchPhrase) {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        if (!(initialSearchPhrase.matches("\\w+\\srandom"))) {
            gmResultPage.checkTheInitialSearchPhrase(initialSearchPhrase);
        } else {
            gmResultPage.checkTheInitialSearchPhrase(testContextObj.getRandomlyPickedKeyWord());
        }
        testContextObj.takeSnapShot();
    }

    @And("User is displayed with Framework Lot Recommended: \"([^\"]*)\"")
    public void user_is_displayed_with_frameworks_lots_recommended(String frameworksLotsRecommended) {
        List<String> frameworkId = new ArrayList<String>();
        ;
        if (frameworksLotsRecommended.matches("([A-Z]+[0-9]+)([a-z]+[0-9]+[a-z]{0,5})(?:_[a-z]+[0-9]+[a-z]{0,5})*")) {
            frameworkId.add(frameworksLotsRecommended);
        } else {
            String[] temporaryFrameworkId = frameworksLotsRecommended.split("_");
            frameworkId = Arrays.asList(temporaryFrameworkId);
        }
        ConfigurationReader configurationReader = new ConfigurationReader("config//RecommendationList.properties");
        String expectedResult = configurationReader.returnProperty(frameworkId.get(0));
        for (int i = 1; i < frameworkId.size(); i++) {
            expectedResult = expectedResult + " " + configurationReader.returnProperty(frameworkId.get(i));
        }
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkFrameworksLotsRecommended(expectedResult);
        testContextObj.takeSnapShot();
    }

    @And("User is displayed with \"([^\"]*)\" answer for question number \"([^\"]*)\"")
    public void user_is_displayed_with_answer_for_question_number(String answer, String questionNumber) {
        if (answer.contains("_")) {
            answer = answer.replace("_", ", ");
        }
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkTheAnswerForTheQuestion(parseInt(questionNumber), answer);
        testContextObj.takeSnapShot();
    }

    @And("User is displayed with \"([^\"]*)\" answer for the question \"([^\"]*)\"")
    public void user_is_displayed_with_answer_for_question(String answer, String question) {
        if (answer.contains("_")) {
            answer = answer.replace("_", ", ");
        }
        if (answer.contains("£")) {
            answer = "£" + NumberFormat.getInstance(Locale.UK).format(parseInt(answer.replace("£", "")));
        }
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkTheAnswerForTheQuestion(question, answer);
        testContextObj.takeSnapShot();
    }

    @Then("User clicks on the Change button adjacent to question number \"([^\"]*)\"")
    public void user_clicks_on_change_button_adjacent_to_question_number(String questionNumber) {
        gmResultPage.clickChangeToTheRelatedQuestion(parseInt(questionNumber));
        testContextObj.takeSnapShot();
    }

    @Then("User clicks on the Change button adjacent to question \"([^\"]*)\"")
    public void user_clicks_on_change_button_adjacent_to_question(String question) {
        gmResultPage.clickChangeToTheRelatedQuestion(question);
        testContextObj.takeSnapShot();
    }

    @Then("User should be displayed with recommendations \"([^\"]*)\" services for lots \"([^\"]*)\"")
    public void user_should_be_displayed_with_recommendations_services(String frameworkIds, String frameworksLotsRecommended) throws InterruptedException {
        String[] frameworkId = frameworkIds.split("_");
        for (int i = 0; i < frameworkId.length; i++) {
            ConfigurationReader configurationReader = new ConfigurationReader("config//RecommendationList.properties");
            String fullExpectedResult = configurationReader.returnProperty(frameworkId[i] + frameworksLotsRecommended);
            String framework = frameworkId[i];
            //if (frameworkId[i].matches("\\D+\\d+[a-zA-Z]+\\d+"))
            if (frameworkId[i].matches("\\D+\\d+[a-zA-Z]+\\d+\\D?")) {
                framework = StringUtils.getMatchedGroupByIndexFromAString(frameworkId[i], "(^\\D+\\d+)([a-zA-Z]+.*$)", 1).trim();
            }
            gmResultPage = objectManager.getGmSearchResultPageObj();
            String expectedTitle = StringUtils.getMatchedGroupByIndexFromAString(fullExpectedResult, "(^.*)(\\(" + framework + "\\),?)(.*$)", 1).trim();
            //gmResultPage = objectManager.getGmSearchResultPageObj();
            gmResultPage.checkTitleFromMainSection(expectedTitle, i + 1);
            String[] frameworksLotRecommended = frameworksLotsRecommended.split("_");
            if (frameworksLotRecommended.length == 1) {
                String mainSectionContent = StringUtils.getMatchedGroupByIndexFromAString(fullExpectedResult, "(^.*)(\\(" + framework + "\\),?)(.*$)", 3).trim();
                gmResultPage.checkRecommendationsFromMainSection(mainSectionContent, i + 1);
            } else {
                Map<Integer, String> recommendationsCollection = IntStream.range(0, frameworksLotRecommended.length).boxed().collect(Collectors.toMap(j -> j, j -> frameworksLotRecommended[j]));
                String recommendationTitleXpath = "//div[@id='accordion-with-summary-sections-content-" + (i + 1) + "']//div//div[%s]//h3";
                gmResultPage.checkMappedListItems("recommendation title", recommendationTitleXpath, recommendationsCollection, "config//LotsRecommendation.properties");

            }
            testContextObj.takeSnapShot();
        }
    }

    @Then("User should be displayed with a number of \"([^\"]*)\" Lot services")
    public void user_should_be_displayed_with_Lot_services(String string) throws InterruptedException {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkTheLotsNumber(string);
        testContextObj.takeSnapShot();
    }

    @Then("User should be displayed with Contact Us link")
    public void user_should_be_displayed_with_Contact_Us_link() throws InterruptedException {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkContactUsLinkIsDisplayed();
        testContextObj.takeSnapShot();
    }

    @Then("User should be displayed with Questions and Answers")
    public void user_should_be_displayed_with_Questions_and_Answers() throws InterruptedException {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkQuestionsListIsDisplayed();
        testContextObj.takeSnapShot();
    }

    @Then("User can successfully expand the details section")
    public void user_can_expand_the_details_section_successfully() throws InterruptedException {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkTheDetailsCTAIsSuccessfullyExpanding();
        testContextObj.takeSnapShot();
    }

    @Then("User is displayed with Framework Id \"([^\"]*)\" and the expiration date \"([^\"]*)\" and the details \"([^\"]*)\" text")
    public void user_is_displayed_with_multiple_details(String frameworkIds, String expirationDates, String details) throws InterruptedException {
        String[] frameworkId = frameworkIds.split("_");
        String[] expirationDate = expirationDates.split("_");
        String[] detail = details.split("_");
        for (int i = 0; i < frameworkId.length; i++) {
            gmResultPage = objectManager.getGmSearchResultPageObj();
            ConfigurationReader configurationReader = new ConfigurationReader("config//FrameWorkDescription.properties");
            String mappedDetails = configurationReader.returnProperty(detail[i]);
            gmResultPage.checkDetailsFrameworkIdExpirationDate(frameworkId[i], expirationDate[i], mappedDetails, i + 1);
            testContextObj.takeSnapShot();
        }
    }

    @Then("User is displayed with recommendations: \"([^\"]*)\" in the right order")
    public void user_is_displayed_with_recommendations_in_the_right_order(String frameworks) throws InterruptedException {
        String[] framework = frameworks.split(" ");
        boolean condition = false;
        if (framework.length % 2 == 0) {
            condition = true;
            for (int i = 1; i < framework.length; i += 2) {
                if (framework[i].length() <= 2) {
                } else {
                    condition = false;
                    break;
                }
            }
        }
        if (condition) {
            for (int i = 0; i < framework.length; i += 2) {
                String[] recommendations = framework[i].split("_");
                String[] indexes = framework[i + 1].split("");
                gmResultPage = objectManager.getGmSearchResultPageObj();
                gmResultPage.checkFrameworkLotsAndDetails(recommendations, Integer.parseInt(indexes[i]));
                testContextObj.takeSnapShot();
            }
        } else {
            for (int i = 0; i < framework.length; i++) {
                String[] recommendations = framework[i].split("_");
                gmResultPage = objectManager.getGmSearchResultPageObj();
                gmResultPage.checkFrameworkLotsAndDetails(recommendations, i + 1);
                testContextObj.takeSnapShot();
            }
        }
    }

    @Then("User is displayed with \"Start Procurement\" button for: \"([^\"]*)\" ordered recommendations")
    public void user_is_displayed_with_start_procurement_button_in_the_right_order(String recommendation) throws InterruptedException {
        String[] recommendations = recommendation.split("_");
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkAdjacentStartProcurementButton(recommendations);
        testContextObj.takeSnapShot();
    }

    @Then("User should be displayed with GM Escape page with route to FM")
    public void user_is_displayed_with_gm_escape_page_with_route_to_fm() throws InterruptedException {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        gmResultPage.checkFacilitiesManagementHeader();
        testContextObj.takeSnapShot();
    }

    @Then("User should be displayed with GM Escape page with route to \"([^\"]*)\"")
    public void user_is_displayed_with_gm_escape_page_with_route_to_rail_legal_services(String escapeRouteFramework) throws InterruptedException {
        String[] recommendation = escapeRouteFramework.split("_");
        for (int i = 0; i < recommendation.length; i++) {
            gmResultPage = objectManager.getGmSearchResultPageObj();
            ConfigurationReader configurationReader = new ConfigurationReader("config//RecommendationList.properties");
            String fullExpectedResult = configurationReader.returnProperty(recommendation[i]);
            String expectedTitle = StringUtils.getMatchedGroupByIndexFromAString(fullExpectedResult, "(^.*)(\\(" + recommendation[i] + "\\),?)(.*$)", 1).trim();
            gmResultPage.checkEscapeRouteHeaderContent(expectedTitle, i + 1);
            testContextObj.takeSnapShot();
        }
    }


    @Then("User checks Routes to Market Definitions content on \"([^\"]*)\"")
    public void user_gets_routes_to_market_content(String routesToMarketDefinitionName) {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        ConfigurationReader configurationReader = new ConfigurationReader("config//QuestionTypesContent.properties");
        String expectedResult = configurationReader.returnProperty(routesToMarketDefinitionName);
        gmResultPage.checkRoutesToMarketContent(expectedResult);
    }

    @Then("I should see the recommended agreements")
    public void i_should_see_the_recommended_agreements(DataTable results) {
        List<String> listAllTitles = objectManager.getGmSearchResultPageObj().summaryList
                (objectManager.getGmSearchResultPageObj().getAgreementResultText());
        Assert.assertEquals(results.asList(), listAllTitles);
    }

    @Then("I should see the following summary list values")
    public void i_should_see_the_following_summary_list_values(DataTable title) {
        List<String> listAllTitles = objectManager.getGmSearchResultPageObj()
                .summaryList(objectManager.getGmSearchResultPageObj().getSummaryListText());
        Assert.assertEquals(title.asList(), listAllTitles);
    }

    @Then("I should see the first {string} displayed")
    public void i_should_see_the_first_displayed(String agreement) {
        assertEquals(objectManager.getGmSearchResultPageObj().getAgreementResultTextOne(), (agreement));
        log.info("The result text is displayed:" + agreement);
    }

    @Then("I should see the second {string} displayed")
    public void i_should_see_the_second_displayed(String agreement) {
        gmResultPage = objectManager.getGmSearchResultPageObj();
        assertEquals(objectManager.getGmSearchResultPageObj().getAgreementResultTextTwo(), (agreement));
        log.info("The result text is displayed:" + agreement);
    }

    @When("User clicks on the contact CCS button")
    public void user_clicks_on_the_contact_CCS_button() {
        objectManager.getGmSearchResultPageObj().clickContactButton();
    }
}
