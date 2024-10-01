package com.scale.stepdefs;

import com.scale.businessPages.AboutCCSPage;
import com.scale.context.TestContext;
import com.scale.utility.PageObjectManager;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.util.List;

public class AboutCCSStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private AboutCCSPage aboutCCSPage;

    public AboutCCSStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        aboutCCSPage =objectManager.getAboutCCSPageObj();
    }

    @Then("I assert the page heading as expected")
    public void iAssertThePageHeadingAsExpected(DataTable heading) {
        List<String> listAllTitles = aboutCCSPage
                .getAllListTitles(aboutCCSPage.getAboutPageSubheading());
        Assert.assertEquals(heading.asList(), listAllTitles);
    }

}