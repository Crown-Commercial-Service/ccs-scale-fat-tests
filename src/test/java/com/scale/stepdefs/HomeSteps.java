package com.scale.stepdefs;


import com.scale.context.TestContext;
import com.scale.framework.utility.*;
import com.scale.businessPages.*;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebDriver;

import static org.junit.Assert.assertEquals;

public class HomeSteps {
    private Logger log = LogManager.getLogger(HomeSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private HomePage homePageObj;


    public HomeSteps(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
    }

    @Then("User should be navigated to CCS home page")
    public void user_should_be_navigated_to_CCS_home_page() {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.homePage1();
        testContextObj.takeSnapShot();
    }

    @And("User is navigated to CCS home page")
    public void user_is_navigated_to_CCS_home_page() throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.homePage1();

    }

    @And("User enters {string} details and click {string} button")
    public void user_enters_details_and_click_button(String framework, String buttonName) {
        if (testContextObj.isScenarioViaCSS()) {
            homePageObj = objectManager.getHomePageObj();
            homePageObj.enterFrameworkDetails(framework);
            testContextObj.takeSnapShot();

            homePageObj = objectManager.getHomePageObj();
            homePageObj.clickButton(buttonName);
        }
    }

    @And("User clicks on the \"([^\"]*)\" button")
    public void user_clicks_on_the_button(String buttonName) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        testContextObj.takeSnapShot();
        homePageObj.clickButton(buttonName);

    }
    @And("User clicks on the \"([^\"]*)\" link")
    public void user_clicks_on_the_link(String linkName) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        testContextObj.takeSnapShot();
        homePageObj.clickButton(linkName);

    }
    @And("User selects \"([^\"]*)\" Option")
    public void user_selects_Option(String linkName) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickElement(linkName);

    }

    @Given("I am on the {string} page")
    public void i_am_on_the_page(String header) {
        assertEquals(objectManager.getHomePageObj().getHeaderOne(), header);
    }

    @When("I am on agreement result title {string} page")
    public void i_am_on_agreement_result_title_page(String string) {
        assertEquals(objectManager.getHomePageObj().getHeaderTwo(), string);
    }

    @And("User clicks on the \"([^\"]*)\" button on the result page")
    public void user_clicks_on_the_button_on_the_result_Page(String buttonName) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        testContextObj.takeSnapShot();
        homePageObj.clickContactButton(buttonName);
    }

}

