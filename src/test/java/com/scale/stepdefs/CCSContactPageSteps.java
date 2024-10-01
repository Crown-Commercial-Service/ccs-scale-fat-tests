package com.scale.stepdefs;

import com.scale.businessPages.ContactCCSPage;
import com.scale.context.TestContext;

import com.scale.utility.PageObjectManager;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebDriver;

import java.net.MalformedURLException;

public class CCSContactPageSteps {
    private Logger log = LogManager.getLogger(com.scale.stepdefs.GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private ContactCCSPage contactCCSPage;

    public CCSContactPageSteps(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
    }

    @Then("User is displayed with \"Contact CCS\" page")
    public void user_is_displayed_with_GM_landing_page() throws MalformedURLException, InterruptedException {
        contactCCSPage.contactCCSPage();
    }



}
