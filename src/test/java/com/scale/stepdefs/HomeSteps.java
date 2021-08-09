package com.scale.stepdefs;


import com.scale.context.TestContext;
import com.scale.framework.utility.*;
import com.scale.businessPages.*;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;


public class HomeSteps {
    private Logger log = Log.getLogger(HomeSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContext;
    private Scenario scenario;
    private HomePage homePageObj;


    public HomeSteps(TestContext testContextObj) {
        this.testContext = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
    }

    @Then("User should be navigated to CCS home page")
    public void user_should_be_navigated_to_CCS_home_page() {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.homePage1();
    }

    @And("User is navigated to CCS home page")
    public void user_is_navigated_to_CCS_home_page() throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.homePage1();

    }

    @And("User enters {string} details and click {string} button")
    public void user_enters_details_and_click_button(String framework, String buttonName) {
        if (testContext.isScenarioViaCSS()) {
            homePageObj = objectManager.getHomePageObj();
            homePageObj.enterFrameworkDetails(framework);
            homePageObj = objectManager.getHomePageObj();
            homePageObj.clickButton(buttonName);
            log.info("User enters details and click on:" + buttonName);
        }
    }

    @And("User clicks on the \"([^\"]*)\" button")
    public void user_clicks_on_the_button(String buttonName) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickButton(buttonName);
    }

    @And("User clicks on the \"([^\"]*)\" link")
    public void user_clicks_on_the_link(String linkName) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickButton(linkName);

    }

    @And("User selects \"([^\"]*)\" Option")
    public void user_selects_Option(String linkName) throws InterruptedException {
        objectManager.getActions().clickElement(linkName);

    }


}

