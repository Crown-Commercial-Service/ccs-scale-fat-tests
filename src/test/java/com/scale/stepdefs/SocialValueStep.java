package com.scale.stepdefs;

import com.scale.businessPages.SocialValuePage;
import com.scale.context.TestContext;
import com.scale.utility.PageObjectManager;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.util.List;

public class SocialValueStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private SocialValuePage socialValuePage;

    public SocialValueStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        socialValuePage = objectManager.getSocialValuePageObj();
    }


    @Then("I assert the social value card heading as expected")
    public void iAssertTheSocialValueCardHeadingAsExpected(DataTable cardHeading) {
        List<String> listAllTitles = socialValuePage
                .getAllListTitles(socialValuePage.getSocialvalueCardHeading());
        Assert.assertEquals(cardHeading.asList(), listAllTitles);
    }

    @Then("I assert the social value page heading as expected")
    public void iAssertTheSocialValuePageHeadingAsExpected(DataTable pageHeading) {
        List<String> listAllTitles = socialValuePage
                .getAllListTitles(socialValuePage.getSocialvaluePageHeading());
        Assert.assertEquals(pageHeading.asList(), listAllTitles);
    }

    @And("I click on {string} button")
    public void iClickOnGetInTouchButton(String button) {
        objectManager.getSocialValuePageObj().clickOnButton(button);
    }
}