package com.scale.stepdefs;

import com.scale.businessPages.E2EPage;
import com.scale.businessPages.HomePage;
import com.scale.context.TestContext;

import com.scale.framework.utility.*;
import cucumber.api.Scenario;
import cucumber.api.java.en.Given;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;

import java.io.FileNotFoundException;
import java.net.MalformedURLException;

public class CommonSteps {
    private Logger log = Log.getLogger(CommonSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContext;
    public ConfigurationReader configurationReader;

    public CommonSteps(TestContext testContextObj) throws MalformedURLException {
        configurationReader = new ConfigurationReader();
        testContext = testContextObj;
        objectManager = testContext.getObjectManager();
    }

    @Given("I am on the {string} page")
    public void i_am_on_the_page(String header) {
        objectManager.getActions().headerText(header);
    }

    @Given("User navigates to the CCS homepage")
    public void user_navigates_to_the_ccs_homepage() {
            objectManager.getActions().launchPage(configurationReader.get("baseURL"));
    }
}
