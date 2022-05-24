package com.scale.stepdefs;

import com.scale.businessPages.GMLandingPage;
import com.scale.context.TestContext;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.net.MalformedURLException;
import java.util.List;

public class GMPageSteps {
    private Logger log = LogManager.getLogger(com.scale.stepdefs.GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private GMLandingPage gmLandingPage;

    public GMPageSteps(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
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
        testContextObj.takeSnapShot();
    }

    @Then("I should see the following options")
    public void i_should_see_the_following_options(DataTable options) {
        gmLandingPage = objectManager.getGmLandingPageObj();
        List<String> listAllTitles = gmLandingPage.getAllListTitles(gmLandingPage.getRadioItemText());
        Assert.assertEquals(options.asList(), listAllTitles);

    }
}
