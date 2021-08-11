package com.scale.stepdefs;

import com.scale.businessPages.GMLandingPage;
import com.scale.businessPages.HomePage;
import com.scale.context.TestContext;
import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;

import java.net.MalformedURLException;

public class GMPageSteps {
    private Logger log = Log.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContext;
    private Scenario scenario;
    private GMLandingPage gmLandingPage;

    public GMPageSteps(TestContext testContextObj) {
        testContext = testContextObj;
        objectManager = testContext.getObjectManager();
    }

    @Then("User is displayed with GM landing page")
    public void user_is_displayed_with_GM_landing_page() throws MalformedURLException, InterruptedException {
        gmLandingPage = objectManager.getGmLandingPageObj();
        gmLandingPage.gmPage();
    }

    @And("User clicks \"Search Frameworks\" CTA from the page")
    public void user_selects_second_found_element_from_page() {
        gmLandingPage = objectManager.getGmLandingPageObj();
        gmLandingPage.clickSearchFrameworksCta();
    }

    @Then("The GM journey is opened in the same tab")
    public void the_gm_journey_is_opened_in_the_same_tab() {
        gmLandingPage = objectManager.getGmLandingPageObj();
        gmLandingPage.isGmJourneyOpenedInTheSameTab();
    }
}
