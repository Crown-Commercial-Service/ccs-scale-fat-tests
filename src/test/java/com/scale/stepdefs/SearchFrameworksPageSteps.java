package com.scale.stepdefs;

import com.scale.businessPages.SearchFrameworkPage;
import com.scale.context.TestContext;
import com.scale.framework.utility.Log;
import com.scale.framework.utility.PageObjectManager;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Then;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;

public class SearchFrameworksPageSteps {
    private Logger log = Log.getLogger(SearchFrameworksPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private SearchFrameworkPage searchFrameworksPageObj;


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

}
