package com.scale.stepdefs;

import com.scale.businessPages.ContactCCSPage;
import com.scale.context.TestContext;
import com.scale.framework.utility.Log;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;
import cucumber.api.java.en.Given;

public class CommonSteps {
    private Logger log = Log.getLogger(CommonSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private ContactCCSPage contactCCSPage;

    public CommonSteps(TestContext testContextObj) {
        this.testContextObj = testContextObj;
    }

    @Given("User navigates to the CCS homepage")
    public void user_navigates_to_the_ccs_homepage() {
        testContextObj.getBrowserFactory().launchURL(testContextObj.getConfigReader().get("baseURL"));
    }

}
