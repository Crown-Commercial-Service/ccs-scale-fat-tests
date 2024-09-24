package com.scale.stepdefs;


import com.scale.businessPages.HomePage;
import com.scale.context.TestContext;
import com.scale.utility.*;

import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebDriver;

import static org.junit.Assert.assertEquals;

public class HomeSteps {
    private Logger log = LogManager.getLogger(HomeSteps.class);
    private WebDriver driver;
    private TestContext testContextObj;
    private Scenario scenario;
    private HomePage homePageObj;


    public HomeSteps(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
    }

    @Then("User should be navigated to CCS home page")
    public void user_should_be_navigated_to_CCS_home_page() {
       
        homePageObj.homePage1();
       testContextObj.takeSnapShot();;
    }

    @And("User is navigated to CCS home page")
    public void user_is_navigated_to_CCS_home_page() throws InterruptedException {
       
        homePageObj.homePage1();

    }

    @And("User enters {string} details and click {string} button")
    public void user_enters_details_and_click_button(String framework, String buttonName) {
        if (testContextObj.isScenarioViaCSS()) {
           
            homePageObj.enterFrameworkDetails(framework);
           testContextObj.takeSnapShot();;

           
            homePageObj.clickButton(buttonName);
        }
    }

    @And("User clicks on the \"([^\"]*)\" button")
    public void user_clicks_on_the_button(String buttonName) throws InterruptedException {
       
       testContextObj.takeSnapShot();;
        homePageObj.clickButton(buttonName);

    }
    @And("User clicks on the \"([^\"]*)\" link")
    public void user_clicks_on_the_link(String linkName) throws InterruptedException {
       
       testContextObj.takeSnapShot();;
        homePageObj.clickButton(linkName);

    }
    @And("User selects \"([^\"]*)\" Option")
    public void user_selects_Option(String linkName) throws InterruptedException {
       
        homePageObj.clickElement(linkName);

    }

    @Given("I am on the {string} page")
    public void i_am_on_the_page(String header) {
        assertEquals(homePageObj.getHeaderOne(), header);
    }

    @When("I am on agreement result title {string} page")
    public void i_am_on_agreement_result_title_page(String string) {
        assertEquals(homePageObj.getHeaderTwo(), string);
    }

    @And("User clicks on the \"([^\"]*)\" button on the result page")
    public void user_clicks_on_the_button_on_the_result_Page(String buttonName) throws InterruptedException {
       
       testContextObj.takeSnapShot();;
        homePageObj.clickContactButton(buttonName);
    }



}

