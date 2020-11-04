package com.scale.stepdefs;


import com.scale.context.ScenarioContext;
import com.scale.context.TestContext;
import com.scale.framework.utility.*;
import com.scale.businessPages.*;
import com.scale.TestRunner.*;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.net.MalformedURLException;
import java.util.ArrayList;


public class HomeSteps {
    private Logger log = Log.getLogger(HomeSteps.class);
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

    @And("User enters \"([^\"]*)\" details and click \"([^\"]*)\" button")
    public void user_enters_details(String framework, String buttonName) {
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


}

