package com.scale.stepdefs;

import com.scale.businessPages.HomePage;
import com.scale.businessPages.SearchFrameworkPage;
import com.scale.context.TestContext;
import com.scale.framework.utility.API.APIBase;
import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.util.List;

public class SearchFrameworksPageSteps {
    private Logger log = Log.getLogger(SearchFrameworksPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private SearchFrameworkPage searchFrameworksPageObj;
    public APIBase apibase = new APIBase();
    ConfigurationReader configReader = new ConfigurationReader();

    public SearchFrameworksPageSteps(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
    }

    @Then("User should be redirected to Search Framework page")
    public void user_should_be_redirected_to_search_framework_page() {
        searchFrameworksPageObj = objectManager.getSearchFrameworkPageObj();
        searchFrameworksPageObj.SearchFrameworkPage1();
        testContextObj.takeSnapShot();
    }

    @Then("The \"Help me find the right framework\" button is not displayed")
    public void help_me_find_the_right_framework_is_not_displayed() {
        searchFrameworksPageObj = objectManager.getSearchFrameworkPageObj();
        searchFrameworksPageObj.checkThatHelpMeFindTheRightFrameworkButtonIsNotDisplayed();
        testContextObj.takeSnapShot();
    }

    @Then("The user it's not landed on any GM Landing page")
    public void user_is_not_landed_on_GM_page() {
        searchFrameworksPageObj = objectManager.getSearchFrameworkPageObj();
        searchFrameworksPageObj.SearchFrameworkPage1();
        testContextObj.takeSnapShot();
    }

    @Then("The Back to search result screen is opened in the same tab")
    public void the_back_to_search_result_screen_is_opened_in_the_same_tab() {
        searchFrameworksPageObj = objectManager.getSearchFrameworkPageObj();
        searchFrameworksPageObj.SearchFrameworkPage1();
        testContextObj.takeSnapShot();
    }

    @When("I should see the search agreements results listed")
    public void i_should_see_the_search_agreements_results_listed() {
        apibase.getRequest(configReader.get("searchAgreement"));
        int total_results = apibase.getTotalResults();
        Assert.assertEquals(objectManager.getSearchFrameworkPageObj().getsearchAgreementHeaderText(), total_results + " " + "agreements found");
    }

    @When("The agreement listed on page one should match with the api response")
    public void the_agreement_listed_on_page_one_should_match_with_the_api_response() {
        searchFrameworksPageObj = objectManager.getSearchFrameworkPageObj();
        List<String> listAllTitles = searchFrameworksPageObj
                .getAllListTitles(objectManager.getSearchFrameworkPageObj().getSearchAgreementList());
        log.info(listAllTitles);
        Assert.assertEquals(apibase.getAgreementName(), listAllTitles);
    }

    @And("I enter {string} in the search agreement field")
    public void i_enter_in_the_search_agreement_field(String searchValue) {
        objectManager.getSearchFrameworkPageObj().enterFrameworkDetails(searchValue);
    }

    @Then("I should see the following filter facet")
    public void i_should_see_the_following_filter_facet(DataTable agreementStatus) {
        List<String> listAllTitles = objectManager.getSearchFrameworkPageObj()
                .getAllListTitles(objectManager.getSearchFrameworkPageObj().getFilterFacet());
        Assert.assertEquals(agreementStatus.asList(), listAllTitles);
    }

    @When("I select {string} filter option")
    public void i_select_filter_option(String string) throws InterruptedException {
        objectManager.getSearchFrameworkPageObj().filterOptions(string);
    }

    @When("I clear the filter applied")
    public void i_clear_the_filter_applied() {
        objectManager.getSearchFrameworkPageObj().cancelFilterSummaryFacet();
    }

    @Then("I should see the upcoming agreements results returned")
    public void i_should_see_the_upcoming_agreements_results_returned() {
        apibase.getRequest(configReader.get("searchAgreementUpcoming"));
        int total_results = apibase.getTotalResults();
        Assert.assertEquals(objectManager.getSearchFrameworkPageObj().getsearchAgreementHeaderText(), total_results + " " + "agreements found");
    }

    @Then("I should see the expired agreements results returned")
    public void i_should_see_the_expired_agreements_results_returned() {
        apibase.getRequest(configReader.get("searchAgreementExpiredStatus"));
        int total_results = apibase.getTotalResults();
        Assert.assertEquals(objectManager.getSearchFrameworkPageObj().getsearchAgreementHeaderText(), total_results + " " + "agreements found");
    }

    @Then("I should see the all agreements results returned")
    public void i_should_see_the_all_agreements_results_returned() {
        apibase.getRequest(configReader.get("searchAgreementExpiredViewAll"));
        int total_results = apibase.getTotalResults();
        Assert.assertEquals(objectManager.getSearchFrameworkPageObj().getsearchAgreementHeaderText(), total_results + " " + "agreements found");
    }
}
